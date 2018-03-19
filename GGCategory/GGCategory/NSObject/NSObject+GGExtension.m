//
//  NSObject+GGExtension.m
//  GGCategory
//
//  Created by GG on 2018/3/15.
//  Copyright © 2018年 GG. All rights reserved.
//

#import "NSObject+GGExtension.h"

#import <objc/runtime.h>

// 忽略没有实现声明方法的警告
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"
@implementation NSObject (GGExtension)
#pragma clang diagnostic pop


+ (NSArray *)instanceWithArray:(NSArray *)array{
    NSMutableArray *mArray = [NSMutableArray array];
    for (id value in array) {
        NSObject *obj = [self gg_objectWithDict:value];
        [mArray addObject:obj];
    }
    return mArray.copy;
}

+ (instancetype)gg_objectWithDict:(NSDictionary *)dict{
    NSObject *obj = [self new];
    [obj gg_configWithDict:dict];
    return obj;
}

-(void)gg_configWithDict:(NSDictionary *)dict{
    // 获取模型属性类名
    NSDictionary *customClassNameInThePropertyList;
    if ([self respondsToSelector:@selector(customClassNameInThePropertyList)]) {
        customClassNameInThePropertyList = [self performSelector:@selector(customClassNameInThePropertyList)];
    }
    
    // 获取数组中元素的类名
    NSDictionary *customClassNameInArrayProperty;
    if ([self respondsToSelector:@selector(customClassNameInArrayProperty)]) {
        customClassNameInArrayProperty = [self performSelector:@selector(customClassNameInArrayProperty)];
    }
    
    
    Class class = self.class;
    
    while (class && class != [NSObject class]) {
        
        // 获取数组中元素与字典中元素名字不对应的列表
        NSDictionary *replacedKeyFromPropertyName ;
        if ([class respondsToSelector:@selector(gg_replacedKeyFromPropertyName)]) {
            replacedKeyFromPropertyName = [class gg_replacedKeyFromPropertyName];
        }
        // 获取所有属性
        unsigned int  outCount;
        Ivar _Nonnull *ivarList = class_copyIvarList(class, &outCount);
        for (unsigned int i = 0;i<outCount;i++) {
            Ivar ivar = ivarList[i];
            const char * name = ivar_getName(ivar);
            const char *typeEncoding = ivar_getTypeEncoding(ivar);
            
            NSString *propertyName = [NSString stringWithUTF8String:name];
            
            if (propertyName.length < 1) {
                continue;
            }
            NSString *keyWithoutUnderscorePrefix = [propertyName substringFromIndex:1];
            NSString *propertyTypeEncoding = [NSString stringWithUTF8String:typeEncoding];
            
            id value = [dict valueForKey:keyWithoutUnderscorePrefix];
            
            // 如果有字符串的名字映射，则利用映射名字获取字典中的键值
            NSString *keyInDict = replacedKeyFromPropertyName[keyWithoutUnderscorePrefix];
            if (keyInDict) {
                value = [dict valueForKey:keyInDict];
            }

            
            if (!value) {
                continue;
            }else{
                
                
                NSString *valueClassString = NSStringFromClass([value class]);
                NSLog(@"字典中value:%@的类名%@",value,valueClassString);
                //处理 模型数组
                // __NSCFArray
                // __NSArrayI
                if ([valueClassString isEqualToString:@"__NSCFArray"] || [valueClassString containsString:@"__NSArray"]) {
                    if (![propertyTypeEncoding isEqualToString:@"@\"NSArray\""] && ![propertyTypeEncoding isEqualToString:@"@\"NSMutableArray\""]) {
                        NSLog(@"模型中属性：%@不为数组格式, 为：%@格式",keyWithoutUnderscorePrefix,propertyTypeEncoding);
                        continue;
                    }
                    NSString *customClassName = customClassNameInArrayProperty[keyWithoutUnderscorePrefix];
                    // 排除自定义类书写出错 ： BOOK 写成 BOOk
                    if (customClassName) {
                        
                        Class customClass = NSClassFromString(customClassName);
                        if (customClass) {
                            
                            NSArray *array = value;
                            NSMutableArray *mArray = [NSMutableArray arrayWithCapacity:array.count];
                            for (NSDictionary *dict in array) {
                                NSObject *obj = [[customClass alloc] init];
                                [obj gg_configWithDict:dict];
                                [mArray addObject:obj];
                            }
                            [self setValue:mArray.copy forKey:keyWithoutUnderscorePrefix];
                        }else{
//                            NSLog(@"模型中数组属性中找不到自定义类型：%@",keyWithoutUnderscorePrefix);
                        }
                    }else{
                        
                        if ([propertyTypeEncoding isEqualToString:@"@\"NSArray\""] || [propertyTypeEncoding isEqualToString:@"@\"NSMutableArray\""]) {
                            [self setValue:value forKey:keyWithoutUnderscorePrefix];
                            continue;
                        }else{
                            NSLog(@"模型中属性：%@不为数组格式, 为：%@格式",keyWithoutUnderscorePrefix,propertyTypeEncoding);
                            continue;
                        }
                        
                    }
                    continue;
                    // 处理 模型属性
                    // __NSDictionaryI
                    // __NSCFDictionary
                    // __NSSingleEntryDictionaryI
                }else if ([valueClassString containsString:@"NS"] && [valueClassString containsString:@"Dictionary"]){
                    
                    NSString *customClassName = customClassNameInThePropertyList[keyWithoutUnderscorePrefix];
                    // 排除自定义类书写出错 ： BOOK 写成 BOOk
                    if (customClassName) {
                        Class customClass = NSClassFromString(customClassName);
                        
                        if (customClass) {
                            NSObject *obj = [customClass gg_objectWithDict:value];
                            
                            [self setValue:obj forKey:keyWithoutUnderscorePrefix];
                        }else{
//                            NSLog(@"模型中属性：%@不为自定义类型,不进行赋值操作",keyWithoutUnderscorePrefix);
                        }
                        
                    }else{
                        
                        
                        if ([propertyTypeEncoding isEqualToString:@"@\"NSDictionary\""] ||  [propertyTypeEncoding isEqualToString:@"@\"NSMutableDictionary\""]) {
                            [self setValue:value forKey:keyWithoutUnderscorePrefix];
                            continue;
                        }
                    }
                    continue;
                    // 处理其他类型(除去字典和数组的类型)
                }else{
                    [self setValue:value forKey:keyWithoutUnderscorePrefix];
                    
                }
            }
        }
        class = [class superclass];
    }
}

- (NSArray *)gg_getProperties{
    return [[self class] gg_getProperties];
}

+ (NSArray *)gg_getProperties{
    NSMutableArray *mArray = [NSMutableArray array];
    
    Class class = self.class;
    
    while (class && class != [NSObject class]) {
        
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        dict[@"className"] = NSStringFromClass(class);
        
        NSMutableArray *properties = [NSMutableArray array];
        unsigned int  outCount;
        Ivar _Nonnull *ivarList = class_copyIvarList(class, &outCount);
        for (unsigned int i = 0;i<outCount;i++) {
            Ivar ivar = ivarList[i];
            const char * name = ivar_getName(ivar);
            const char *typeEncoding = ivar_getTypeEncoding(ivar);
            
            NSDictionary *dict = @{
                                   @"name":[NSString stringWithUTF8String:name],
                                   @"typeEncoding":[NSString stringWithUTF8String:typeEncoding],
                                   };
            [properties addObject:dict];
        }
        dict[@"properties"] = properties.copy;
        [mArray addObject:dict];
        
        class = [class superclass];
    }
    
    return mArray;
}


+ (instancetype)instanceWithDict:(NSDictionary *)dict{
    
    NSObject *obj = [[self alloc] init];
    if (dict) {
        [obj setValuesForKeysWithDictionary:dict];
    }
    return obj;
}
- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    
}


@end
