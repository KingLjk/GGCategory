//
//  UITextField+GGConfiguration.h
//  GGCategory
//
//  Created by GG on 2018/3/16.
//  Copyright © 2018年 GG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (GGConfiguration)

- (UITextField * (^) (UIFont *))setFont;

- (UITextField * (^) (UIColor *))setTextColor;

- (UITextField * (^) (NSTextAlignment))setTextAlignment;

- (UITextField * (^) (NSString *))setText;

@end
