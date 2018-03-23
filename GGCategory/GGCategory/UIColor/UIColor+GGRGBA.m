//
//  UIColor+GGRGBA.m
//  GGCategory
//
//  Created by GG on 2018/3/13.
//  Copyright © 2018年 GG. All rights reserved.
//

#import "UIColor+GGRGBA.h"

@implementation UIColor (GGRGBA)

// 注意获取RGBA时，返回的数组长度可能为2/4
// 长度为2时，第一个值代表了RGB的相同值
- (CGFloat)gg_red{
    CGColorRef colorRef = self.CGColor;
    size_t numberOfComponents = CGColorGetNumberOfComponents(colorRef);
    const CGFloat *components = CGColorGetComponents(colorRef);
    CGFloat value = 0;
    
    if (numberOfComponents == 4) {
        value =  components[0];
    }else if (numberOfComponents == 2){
        value =  components[0];
    }else{
        value =  0;
    }
    return value;
}
- (CGFloat)gg_green{
    CGColorRef colorRef = self.CGColor;
    size_t numberOfComponents = CGColorGetNumberOfComponents(colorRef);
    const CGFloat *components = CGColorGetComponents(colorRef);
    CGFloat value = 0;
    
    if (numberOfComponents == 4) {
        value =  components[1];
    }else if (numberOfComponents == 2){
        
        value =  components[0];
    }else{
        value =  0;
    }
    return value;
}
- (CGFloat)gg_blue{
    CGColorRef colorRef = self.CGColor;
    size_t numberOfComponents = CGColorGetNumberOfComponents(colorRef);
    const CGFloat *components = CGColorGetComponents(colorRef);
    CGFloat value = 0;
    
    if (numberOfComponents == 4) {
        value =  components[2];
    }else if (numberOfComponents == 2){
        value =  components[0];
    }else{
        value =  0;
    }
    return value;
}
- (CGFloat)gg_alpha{
    CGColorRef colorRef = self.CGColor;
    size_t numberOfComponents = CGColorGetNumberOfComponents(colorRef);
    const CGFloat *components = CGColorGetComponents(colorRef);
    CGFloat value = 0;
    
    if (numberOfComponents == 4) {
        value =  components[3];
    }else if (numberOfComponents == 2){
        
        value =  components[1];
    }else{
        value =  0;
    }
    return value;
}

+ (UIColor *)gg_colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha{
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}
+ (UIColor *)gg_colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue{
    
 
    
    return [self gg_colorWithRed:red green:green blue:blue alpha:1.0];
}



+ (UIColor *)gg_RGBRandomColor{
    CGFloat r = arc4random()%256/255.0f;
    CGFloat g = arc4random()%256/255.0f;
    CGFloat b = arc4random()%256/255.0f;
    return  [self gg_colorWithRed:r green:g blue:b];
}
+ (UIColor *)gg_RGBARandomColor{
    
    CGFloat r = arc4random()%256/255.0f;
    CGFloat g = arc4random()%256/255.0f;
    CGFloat b = arc4random()%256/255.0f;
    CGFloat a = arc4random()%256/255.0f;
    return  [self gg_colorWithRed:r green:g blue:b alpha:a];

}


@end
