//
//  UIColor+GGHexString.m
//  GGCategory
//
//  Created by GG on 2018/3/13.
//  Copyright © 2018年 GG. All rights reserved.
//

#import "UIColor+GGHexString.h"

@implementation UIColor (GGHexString)

+ (UIColor*)gg_colorWithHexString:(NSString*)stringToConvert alpha:(float)alpha{
    
    if([stringToConvert hasPrefix:@"#"])
    {
        stringToConvert = [stringToConvert substringFromIndex:1];
    }
    NSScanner*scanner = [NSScanner scannerWithString:stringToConvert];
    unsigned hexNum;
    if(![scanner scanHexInt:&hexNum])
    {
        return nil;
    }
    return[self colorWithRGBHex:hexNum alpha:alpha];
}

+ (UIColor*)gg_colorWithHexString:(NSString*)stringToConvert{
    return [self gg_colorWithHexString:stringToConvert alpha:1.0];
}

+ (UIColor*)colorWithRGBHex:(UInt32)hex alpha:(float)alpha{
    
    float a = alpha;
    if (a > 1.0) {
        a = 1.0;
    }else if (a < 0){
        a = 0;
    }
    int r = (hex >>16) &0xFF;
    int g = (hex >>8) &0xFF;
    int b = (hex) &0xFF;
    return[UIColor colorWithRed:r /255.0f
                          green:g /255.0f
                           blue:b /255.0f
                          alpha:a];
}

@end
