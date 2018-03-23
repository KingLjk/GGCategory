//
//  UITextField+GGConfiguration.h
//  GGCategory
//
//  Created by GG on 2018/3/16.
//  Copyright © 2018年 GG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (GGConfiguration)

- (UITextField * (^) (UIFont *))gg_setFont;

- (UITextField * (^) (UIColor *))gg_setTextColor;

- (UITextField * (^) (NSTextAlignment))gg_setTextAlignment;

- (UITextField * (^) (NSString *))gg_setText;


- (void)gg_configTextFieldWithBlock:(void(^)(UITextField *textField))block;

@end
