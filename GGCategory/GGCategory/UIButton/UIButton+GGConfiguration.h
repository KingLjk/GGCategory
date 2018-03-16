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
- (UIButton *(^)(NSString *))normalTitle;
- (UIButton *(^)(UIColor *))normalTitleColor;
- (UIButton *(^)(UIImage *))normalImage;

#pragma ********************* selected *********************
- (UIButton *(^)(NSString *))selectedTitle;
- (UIButton *(^)(UIColor *))selectedTitleColor;
- (UIButton *(^)(UIImage *))selectedImage;

#pragma ********************* highlighted *********************
- (UIButton *(^)(NSString *))highlightedTitle;
- (UIButton *(^)(UIColor *))highlightedTitleColor;
- (UIButton *(^)(UIImage *))highlightedImage;

#pragma ********************* backGroundColor *********************
- (UIButton *(^)(UIColor *))backGroundColor;

- (UIButton *(^)(UIFont *))font;


// 组合设置
#pragma ********************* title And titleColor *********************
- (UIButton *(^)(NSString *title, UIColor *color))normalTitleAndTitleColor;
- (UIButton *(^)(NSString *title, UIColor *color))selectedTitleAndTitleColor;
- (UIButton *(^)(NSString *title, UIColor *color))highlightedTitleAndTitleColor;

#pragma ********************* title And image *********************
- (UIButton *(^)(NSString *title, UIImage *image))normalTitleAndImage;
- (UIButton *(^)(NSString *title, UIImage *image))selectedTitleAndImage;
- (UIButton *(^)(NSString *title, UIImage *image))highlightedTitleAndImage;




@end

