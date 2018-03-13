//
//  UIButton+GGTouchEvent.h
//  GGCategory
//
//  Created by GG on 2018/3/13.
//  Copyright © 2018年 GG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (GGTouchEvent)


- (instancetype _Nullable )initWithTarget:(nullable id)target selectorName:(NSString * _Nonnull)selectorName;

- (instancetype _Nullable )initWithTarget:(nullable id)target selectorName:(NSString * _Nonnull)selectorName forControlEvents:(UIControlEvents)event;
@end
