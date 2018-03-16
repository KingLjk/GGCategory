//
//  UILabel+GGConfiguration.h
//  GGCategory
//
//  Created by GG on 2018/3/15.
//  Copyright © 2018年 GG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (GGConfiguration)

- (UILabel * (^) (UIFont *))setFont;

- (UILabel * (^) (UIColor *))setTextColor;

- (UILabel * (^) (NSTextAlignment))setTextAlignment;

- (UILabel * (^) (NSString *))setText;

- (UILabel * (^) (NSAttributedString *))setAttributedText;

@end
