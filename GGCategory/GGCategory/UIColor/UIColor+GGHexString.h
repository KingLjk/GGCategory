//
//  UIColor+GGHexString.h
//  GGCategory
//
//  Created by GG on 2018/3/13.
//  Copyright © 2018年 GG. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kGGHexColor(stringToConvert) [UIColor gg_colorWithHexString:stringToConvert]
#define kGGHexAlphaColor(stringToConvert,a) [UIColor gg_colorWithHexString:stringToConvert alpha:a]

@interface UIColor (GGHexString)
+ (UIColor*)gg_colorWithHexString:(NSString*)stringToConvert;
+ (UIColor*)gg_colorWithHexString:(NSString*)stringToConvert alpha:(float)alpha;
@end
