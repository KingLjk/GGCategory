//
//  UIViewController+GGAlert.h
//  GGCategory
//
//  Created by GG on 2018/3/23.
//  Copyright © 2018年 GG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (GGAlert)


/**
 alert展示，默认UIAlertControllerStyleAlert、UIAlertActionStyleDefault
 
 @param title 顶部提示标题
 @param message 提示内容
 @param actionWithTitle 按钮文字，默认为“确定”
 @param handler 按钮的点击回调
 */
- (void)gg_showAlertWithTitle:(NSString *)title message:(NSString *)message actionWithTitle:(NSString *)actionWithTitle handler:(void(^)(void))handler;

/**
 alert展示，默认UIAlertControllerStyleAlert
 
 @param title 顶部提示标题
 @param message 提示内容
 @param actionWithTitle 按钮文字，默认为“确定”
 @param style 按钮的样式
 @param handler 按钮的点击回调
 */
- (void)gg_showAlertWithTitle:(NSString *)title message:(NSString *)message actionWithTitle:(NSString *)actionWithTitle actionStyle:(UIAlertActionStyle)style  handler:(void(^)(void))handler;

/**
 alert展示

 @param title 顶部提示标题
 @param message 提示内容
 @param alertStyle 内容是展示在顶部或者底部
 @param actionWithTitle 按钮文字，默认为“确定”
 @param style 按钮的样式
 @param handler 按钮的点击回调
 */
- (void)gg_showAlertWithTitle:(NSString *)title message:(NSString *)message alertControllerStyle:(UIAlertControllerStyle)alertStyle actionWithTitle:(NSString *)actionWithTitle actionStyle:(UIAlertActionStyle)style  handler:(void(^)(void))handler;

@end
