//
//  UIButton+GGTouchEvent.m
//  GGCategory
//
//  Created by GG on 2018/3/13.
//  Copyright © 2018年 GG. All rights reserved.
//

#import "UIButton+GGTouchEvent.h"

@implementation UIButton (GGTouchEvent)

- (instancetype _Nullable)initWithTarget:(nullable id)target selectorName:(NSString * _Nonnull)selectorName{
        return [self initWithTarget:target selectorName:selectorName forControlEvents:UIControlEventTouchUpInside];
}
- (instancetype _Nullable)initWithTarget:(nullable id)target selectorName:(NSString * _Nonnull)selectorName forControlEvents:(UIControlEvents)event{
    if (self = [super init]) {
        if (selectorName) {
            SEL sel = NSSelectorFromString(selectorName);
            [self addTarget:target action:sel forControlEvents:event];
        }
    }
    return self;
}

- (instancetype _Nullable)initWithTarget:(nullable id)target selector:(SEL)selector forControlEvents:(UIControlEvents)event{
    if (self = [super init]) {
        [self addTarget:target action:selector forControlEvents:event];
    }
    return self;
}

- (instancetype _Nullable)initWithTarget:(nullable id)target selector:(SEL)selector{
    return [self initWithTarget:target selector:selector forControlEvents:UIControlEventTouchUpInside];
}
@end
