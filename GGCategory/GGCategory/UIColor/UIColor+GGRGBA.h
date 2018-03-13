//
//  UIColor+GGRGBA.h
//  GGCategory
//
//  Created by GG on 2018/3/13.
//  Copyright © 2018年 GG. All rights reserved.
//

#import <UIKit/UIKit.h>


#define GGRGBAColor(r,g,b,a) [UIColor colorWithRed:r green:g blue:b alpha:a]
#define GGRGBColor(r,g,b) [UIColor colorWithRed:r green:g blue:b alpha:1.0]


#define GGRGBRandomColor [UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:1.0]
#define GGRGBARandomColor [UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:arc4random()%256/255.0]

@interface UIColor (GGRGBA)

- (CGFloat)red;
- (CGFloat)green;
- (CGFloat)blue;
- (CGFloat)alpha;

+ (UIColor *)gg_colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;
+ (UIColor *)gg_colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue;
@end
