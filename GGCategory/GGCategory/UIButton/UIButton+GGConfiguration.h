//
//  UIButton+GGConfiguration.h
//  GGCategory
//
//  Created by GG on 2018/3/15.
//  Copyright © 2018年 GG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (GGConfiguration)

#pragma ********************* 推荐使用 *********************

#pragma 单个设置
#pragma ********************* normal *********************
- (UIButton *(^)(NSString *))gg_setNTitle;
- (UIButton *(^)(UIColor *))gg_setNTitleColor;
- (UIButton *(^)(UIImage *))gg_setNImage;

#pragma ********************* selected *********************
- (UIButton *(^)(NSString *))gg_setSTitle;
- (UIButton *(^)(UIColor *))gg_setSTitleColor;
- (UIButton *(^)(UIImage *))gg_setSImage;

#pragma ********************* highlighted *********************
- (UIButton *(^)(NSString *))gg_setHTitle;
- (UIButton *(^)(UIColor *))gg_setHTitleColor;
- (UIButton *(^)(UIImage *))gg_setHImage;

#pragma ********************* 设置字体 *********************
- (UIButton *(^)(UIFont *))gg_setFont;




#pragma ********************* 单独设置,建议与带block参数的方法配合使用 *********************
// 方法不能智能提示
- (void)setGg_normalTitle:(NSString *)title;
- (void)setGg_selectedTitle:(NSString *)title;
- (void)setGg_highlightedTitle:(NSString *)title;
- (void)setGg_normalTitleColor:(UIColor *)color;
- (void)setGg_selectedTitleColor:(UIColor *)color;
- (void)setGg_highlightedTitleColor:(UIColor *)color;
- (void)setGg_normalImage:(UIImage *)image;
- (void)setGg_selectedImage:(UIImage *)image;
- (void)setGg_highlightedImage:(UIImage *)image;

#pragma ********************* block参数方法 *********************
- (void)gg_configButtonWithBlock:(void(^)(UIButton *button))block;



- (void)gg_setNormalTitle:(NSString *)title;
- (void)gg_setSelectedTitle:(NSString *)title;
- (void)gg_setHighlightedTitle:(NSString *)title;
- (void)gg_setNormalTitleColor:(UIColor *)color;
- (void)gg_setSelectedTitleColor:(UIColor *)color;
- (void)gg_setHighlightedTitleColor:(UIColor *)color;
- (void)gg_setNormalImage:(UIImage *)image;
- (void)gg_setSelectedImage:(UIImage *)image;
- (void)gg_setHighlightedImage:(UIImage *)image;



@end

