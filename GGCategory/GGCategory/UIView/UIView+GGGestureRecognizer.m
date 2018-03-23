//
//  UIView+GGGestureRecognizer.m
//  GGCategory
//
//  Created by GG on 2018/3/13.
//  Copyright © 2018年 GG. All rights reserved.
//

#import "UIView+GGGestureRecognizer.h"

@implementation UIView (GGGestureRecognizer)


- (UITapGestureRecognizer *)gg_addTapGestureWithTarget:(nullable id)target action:(nullable SEL)action
{
    UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc] initWithTarget:target action:action];
    [self addGestureRecognizer:gesture];
    return gesture;
}
- (UILongPressGestureRecognizer *)gg_addLongPressGestureWithTarget:(nullable id)target action:(nullable SEL)action
{
    UILongPressGestureRecognizer *gesture = [[UILongPressGestureRecognizer alloc] initWithTarget:target action:action];
    [self addGestureRecognizer:gesture];
    return gesture;
}



@end
