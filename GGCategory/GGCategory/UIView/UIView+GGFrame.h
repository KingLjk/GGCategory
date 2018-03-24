//
//  UIView+GGFrame.h
//  GGCategory2018
//
//  Created by GG on 2018/3/12.
//  Copyright © 2018年 GG. All rights reserved.
//

#import <UIKit/UIKit.h>


#define kGGScreenBounds [UIScreen mainScreen].bounds
#define kGGScreenSize [UIScreen mainScreen].bounds.size
#define kGGScreenWidth [UIScreen mainScreen].bounds.size.width
#define kGGScreenHeight [UIScreen mainScreen].bounds.size.height

// returns CGRectZero if the status bar is hidden
#define kGGVisibleStatusBarFrame [UIApplication sharedApplication].statusBarFrame
#define kGGVisibleStatusBarSize [UIApplication sharedApplication].statusBarFrame.size
#define kGGVisibleStatusBarWidth [UIApplication sharedApplication].statusBarFrame.size.width
#define kGGVisibleStatusBarHeight [UIApplication sharedApplication].statusBarFrame.size.height

@interface UIView (GGFrame)
- (CGFloat)gg_x;
- (void)setGg_x:(CGFloat)x;

- (CGFloat)gg_y;
- (void)setGg_y:(CGFloat)y;

- (CGFloat)gg_width;
- (void)setGg_width:(CGFloat)width;

- (CGFloat)gg_height;
- (void)setGg_height:(CGFloat)height;

- (CGPoint)gg_origin;
- (void)setGg_origin:(CGPoint)origin;

- (CGSize)gg_size;
- (void)setGg_size:(CGSize)size;




#pragma ********************* 函数式 + 链式(带参) *********************

- (UIView *(^)(CGFloat))gg_setX;
- (UIView *(^)(CGFloat))gg_setY;
- (UIView *(^)(CGFloat))gg_setWidth;
- (UIView *(^)(CGFloat))gg_setHeight;

- (UIView *(^)(CGPoint))gg_setOrigin;
- (UIView *(^)(CGSize))gg_setSize;


@end
