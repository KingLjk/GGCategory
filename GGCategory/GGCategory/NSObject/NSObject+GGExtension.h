//
//  NSObject+GGExtension.h
//  GGCategory
//
//  Created by GG on 2018/3/15.
//  Copyright © 2018年 GG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (GGExtension)

/**
 给对象属性赋值

 @param dict 字典数据
 */
-(void)gg_configWithDict:(NSDictionary *)dict;


/**
 使用字典实例化一个对象

 @param dict 字典数据
 @return 实例化对象
 */
+ (instancetype)gg_objectWithDict:(NSDictionary *)dict;
/**
 模型数组便捷创建
 @param array 字典数组
 @return 返回一个模型数组
 */
+ (NSArray *)gg_objectsWithArray:(NSArray *)array;

/**
 描述数组属性中保存的数据类型
 @{
 @"books":@"GGBook",         // 表示books数组中保存的都是GGBook模型
 @"teachers":@"GGTeacher",   // 表示teachers数组中保存的都是GGTeacher模型
 }
 @return return value description
 */
- (NSDictionary *)gg_customClassNameInArrayProperty;


/**
 描述属性自定义数据类型
 @{
 @"book":@"GGBook",         // 表示books属性是GGBook类型
 @"teacher":@"GGTeacher",   // 表示teacher属性是GGTeacher类型
 }
 
 @return return value description
 */
- (NSDictionary  *)gg_customClassNameInThePropertyList;


/**
 实现这个方法的目的：告诉GGExtension框架模型中的属性名对应着字典的哪个key
 @{
 @"p_name":@"d_keyName",    // 字典中的d_keyName对应的值会赋值给属性 p_name
 }
 @return return value description
 */
+ (NSDictionary *)gg_replacedKeyFromPropertyName;


- (NSArray *)gg_getProperties;
+ (NSArray *)gg_getProperties;






@end
