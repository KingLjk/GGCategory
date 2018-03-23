//
//  UIView+GGGestureRecognizer.h
//  GGCategory
//
//  Created by GG on 2018/3/13.
//  Copyright © 2018年 GG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (GGGestureRecognizer)
- (UITapGestureRecognizer  * _Nullable)gg_addTapGestureWithTarget:(nullable id)target action:(nullable SEL)action;
- (UILongPressGestureRecognizer * _Nullable)gg_addLongPressGestureWithTarget:(nullable id)target action:(nullable SEL)action;

@end
