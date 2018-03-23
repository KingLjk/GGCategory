//
//  UIButton+GGConfiguration.m
//  GGCategory
//
//  Created by GG on 2018/3/15.
//  Copyright © 2018年 GG. All rights reserved.
//

#import "UIButton+GGConfiguration.h"

@implementation UIButton (GGConfiguration)


#pragma 单个设置
#pragma ********************* normal *********************
- (UIButton *(^)(NSString *))normalTitle{
    
    return ^(NSString *title){
        [self setNormalTitle:title];
        return self;
    };
}
- (UIButton *(^)(UIColor *))normalTitleColor{
    return ^(UIColor *color){
        [self setNormalTitleColor:color];
        return self;
    };
}
- (UIButton *(^)(UIImage *))normalImage{
    return ^(UIImage *image){
        [self setNormalImage:image];
        return self;
    };
    
}

#pragma ********************* selected *********************
- (UIButton *(^)(NSString *))selectedTitle{
    return ^(NSString *title){
        [self setSelectedTitle:title];
        return self;
    };
}
- (UIButton *(^)(UIColor *))selectedTitleColor{
    return ^(UIColor *color){
        [self setSelectedTitleColor:color];
        return self;
    };
}
- (UIButton *(^)(UIImage *))selectedImage{
    return ^(UIImage *image){
        [self setSelectedImage:image];
        return self;
    };
}

#pragma ********************* highlighted *********************
- (UIButton *(^)(NSString *))highlightedTitle{
    return ^(NSString *title){
        [self setHighlightedTitle:title];
        return self;
    };
}
- (UIButton *(^)(UIColor *))highlightedTitleColor{
    return ^(UIColor *color){
        [self setHighlightedTitleColor:color];
        return self;
    };
}
- (UIButton *(^)(UIImage *))highlightedImage{
    return ^(UIImage *image){
        [self setSelectedImage:image];
        return self;
    };
}
#pragma ********************* backGroundColor *********************
- (UIButton *(^)(UIColor *))backGroundColor{
    return ^(UIColor *color){
        self.backgroundColor = color;
        return self;
    };
}
- (UIButton *(^)(UIFont *))font{
    return ^(UIFont *value){
        self.titleLabel.font = value;
        return self;
    };
}


#pragma 组合设置
#pragma ********************* title And titleColor *********************
- (UIButton *(^)(NSString *title, UIColor *color))normalTitleAndTitleColor{
    return ^(NSString *title,UIColor *color){
        [self setNormalTitle:title];
        [self setNormalTitleColor:color];
        return self;
    };
}
- (UIButton *(^)(NSString *title, UIColor *color))selectedTitleAndTitleColor{
    return ^(NSString *title,UIColor *color){
        [self setSelectedTitle:title];
        [self setSelectedTitleColor:color];
        return self;
    };
}
- (UIButton *(^)(NSString *title, UIColor *color))highlightedTitleAndTitleColor{
    return ^(NSString *title,UIColor *color){
        [self setHighlightedTitle:title];
        [self setHighlightedTitleColor:color];
        return self;
    };
}

#pragma ********************* title And image *********************
- (UIButton *(^)(NSString *title, UIImage *image))normalTitleAndImage{
    return ^(NSString *title, UIImage *image){
        [self setNormalTitle:title];
        [self setNormalImage:image];
        return self;
    };
}
- (UIButton *(^)(NSString *title, UIImage *image))selectedTitleAndImage{
    return ^(NSString *title, UIImage *image){
        [self setSelectedTitle:title];
        [self setSelectedImage:image];
        return self;
    };
}
- (UIButton *(^)(NSString *title, UIImage *image))highlightedTitleAndImage{
    return ^(NSString *title, UIImage *image){
        [self setHighlightedTitle:title];
        [self setHighlightedImage:image];
        return self;
    };
    
}




#pragma *********************单独设置 *********************
- (void)setNormalTitle:(NSString *)title{
    [self setTitle:title forState:UIControlStateNormal];
}
- (void)setSelectedTitle:(NSString *)title{
    [self setTitle:title forState:UIControlStateNormal];
}
- (void)setHighlightedTitle:(NSString *)title{
    [self setTitle:title forState:UIControlStateNormal];
    
}
- (void)setNormalTitleColor:(UIColor *)color{
    [self setTitleColor:color forState:UIControlStateNormal];
}
- (void)setSelectedTitleColor:(UIColor *)color{
    [self setTitleColor:color forState:UIControlStateSelected];
}
- (void)setHighlightedTitleColor:(UIColor *)color{
    [self setTitleColor:color forState:UIControlStateHighlighted];
}


- (void)setNormalImage:(UIImage *)image{
    [self setImage:image forState:UIControlStateNormal];
}
- (void)setSelectedImage:(UIImage *)image{
    [self setImage:image forState:UIControlStateSelected];
}
- (void)setHighlightedImage:(UIImage *)image{
    [self setImage:image forState:UIControlStateHighlighted];
}

- (void)gg_configButtonWithBlock:(void(^)(UIButton *button))block{
    block(self);
}

- (void)gg_configTitleLabelWithButtonBlock:(void(^)(UILabel *label))block{
    block(self.titleLabel);
}
- (void)gg_configImageViewWithButtonBlock:(void(^)(UIImageView *imageView))block{
    block(self.imageView);
}
- (void)gg_configButtonWithButtonBlock:(void(^)(UILabel *label,UIImageView *imageView))block{
    block(self.titleLabel,self.imageView);
}

@end
