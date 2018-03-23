//
//  Person.m
//  GGCategory
//
//  Created by GG on 2018/3/19.
//  Copyright © 2018年 GG. All rights reserved.
//

#import "Person.h"

#import "NSObject+GGExtension.h"

@implementation Person

+ (NSDictionary *)gg_replacedKeyFromPropertyName{
    
    return @{
             @"ID":@"id",
             @"introduction":@"description",
             @"son":@"baby"
             };
}
- (NSDictionary *)gg_customClassNameInThePropertyList{
    return @{@"son":@"Son"};
}

@end
