//
//  Person.h
//  GGCategory
//
//  Created by GG on 2018/3/19.
//  Copyright © 2018年 GG. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Son;
@interface Person : NSObject


@property (nonatomic, copy)NSString *name;

@property (nonatomic, copy)NSNumber *ID;


@property (nonatomic, copy)NSString *introduction;

@property (nonatomic, strong)Son *son;

@property (nonatomic, strong)NSArray *array2;


@property (nonatomic, strong)NSDictionary *test0;
@end
