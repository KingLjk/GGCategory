//
//  NSObject+GGExtension.h
//  GGCategory
//
//  Created by GG on 2018/3/15.
//  Copyright © 2018年 GG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (GGExtension)

+ (instancetype)gg_objectWithDict:(NSDictionary *)dict;

-(void)gg_configWithDict:(NSDictionary *)dict;


/**
 描述数组属性中保存的数据类型
 @{
 @"books":@"GGBook",         // 表示books数组中保存的都是GGBook模型
 @"teachers":@"GGTeacher",   // 表示teachers数组中保存的都是GGTeacher模型
 }
 @return return value description
 */
- (NSDictionary *)customClassNameInArrayProperty;


/**
 描述属性自定义数据类型
 @{
 @"book":@"GGBook",         // 表示books属性是GGBook类型
 @"teacher":@"GGTeacher",   // 表示teacher属性是GGTeacher类型
 }
 
 @return return value description
 */
- (NSDictionary  *)customClassNameInThePropertyList;

- (NSArray *)gg_getProperties;
+ (NSArray *)gg_getProperties;


+ (instancetype)instanceWithDict:(NSDictionary *)dict;

@end
