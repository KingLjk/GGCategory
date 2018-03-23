//
//  UIColor+GGRGBA.h
//  GGCategory
//
//  Created by GG on 2018/3/13.
//  Copyright © 2018年 GG. All rights reserved.
//

#import <UIKit/UIKit.h>


#define kGGRGBAColor(r,g,b,a) [UIColor colorWithRed:r green:g blue:b alpha:a]
#define kGGRGBColor(r,g,b) [UIColor colorWithRed:r green:g blue:b alpha:1.0]


#define kGGRGBRandomColor [UIColor gg_RGBRandomColor]
#define kGGRGBARandomColor [UIColor gg_RGBARandomColor]

@interface UIColor (GGRGBA)

- (CGFloat)gg_red;
- (CGFloat)gg_green;
- (CGFloat)gg_blue;
- (CGFloat)gg_alpha;

+ (UIColor *)gg_colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;
+ (UIColor *)gg_colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue;

+ (UIColor *)gg_RGBRandomColor;
+ (UIColor *)gg_RGBARandomColor;



@end
