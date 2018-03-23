//
//  UILabel+GGConfiguration.h
//  GGCategory
//
//  Created by GG on 2018/3/15.
//  Copyright © 2018年 GG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (GGConfiguration)

- (UILabel * (^) (UIFont *))gg_setFont;

- (UILabel * (^) (UIColor *))gg_setTextColor;

- (UILabel * (^) (NSTextAlignment))gg_setTextAlignment;

- (UILabel * (^) (NSString *))gg_setText;

- (UILabel * (^) (NSAttributedString *))gg_setAttributedText;


- (void)gg_configLabelWithBlock:(void(^)(UILabel *label))block;
@end
