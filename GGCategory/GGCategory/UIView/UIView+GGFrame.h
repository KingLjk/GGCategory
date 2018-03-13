//
//  UIView+GGFrame.h
//  GGCategory2018
//
//  Created by 李佳贵 on 2018/3/12.
//  Copyright © 2018年 李佳贵. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (GGFrame)
- (CGFloat)x;
- (void)setX:(CGFloat)x;
- (CGFloat)y;
- (void)setY:(CGFloat)y;
- (CGFloat)height;
- (void)setHeight:(CGFloat)height;
- (CGFloat)width;
- (void)setWidth:(CGFloat)width;


/**
 // 函数式 + 链式(带参)
 UIView *redView = [UIView new];
 redView.backgroundColor = [UIColor redColor];
 
 [self.view addSubview:redView];
 
 后边的参数位置可以使用前边刚设置的参数： 
 redView.originX(100).originY(redView.x).sizeWidth(100).sizeHeight(redView.width * 2);
 */
- (UIView *(^)(CGFloat))originX;

- (UIView *(^)(CGFloat))originY;

- (UIView *(^)(CGFloat))sizeWidth;

- (UIView *(^)(CGFloat))sizeHeight;

@end
