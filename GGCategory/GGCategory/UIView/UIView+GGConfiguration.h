//
//  UIView+GGConfiguration.h
//  GGCategory
//
//  Created by GG on 2018/3/16.
//  Copyright © 2018年 GG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (GGConfiguration)
#pragma ********************* 设置圆角 *********************

/**
 设置圆角
 */
- (UIView *(^)(CGFloat))cornerRadius;

/**
 设置边线宽度
 */
- (UIView *(^)(CGFloat ))borderWidth;


/**
 设置边线颜色
 */
- (UIView *(^)(UIColor *))borderColor;
@end
