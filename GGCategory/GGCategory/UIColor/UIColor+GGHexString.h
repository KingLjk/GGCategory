//
//  UIColor+GGHexString.h
//  GGCategory
//
//  Created by GG on 2018/3/13.
//  Copyright © 2018年 GG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (GGHexString)
+ (UIColor*)gg_colorWithHexString:(NSString*)stringToConvert;
@end