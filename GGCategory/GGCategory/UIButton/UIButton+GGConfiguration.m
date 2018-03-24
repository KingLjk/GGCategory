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
- (UIButton *(^)(NSString *))gg_setNTitle{
    
    return ^(NSString *title){
        [self gg_setNormalTitle:title];
        return self;
    };
}
- (UIButton *(^)(UIColor *))gg_setNTitleColor{
    return ^(UIColor *color){
        [self gg_setNormalTitleColor:color];
        return self;
    };
}
- (UIButton *(^)(UIImage *))gg_setNImage{
    return ^(UIImage *image){
        [self gg_setNormalImage:image];
        return self;
    };
    
}

#pragma ********************* selected *********************
- (UIButton *(^)(NSString *))gg_setSTitle{
    return ^(NSString *title){
        [self gg_setSelectedTitle:title];
        return self;
    };
}
- (UIButton *(^)(UIColor *))gg_setSTitleColor{
    return ^(UIColor *color){
        [self gg_setSelectedTitleColor:color];
        return self;
    };
}
- (UIButton *(^)(UIImage *))gg_setSImage{
    return ^(UIImage *image){
        [self gg_setSelectedImage:image];
        return self;
    };
}

#pragma ********************* highlighted *********************
- (UIButton *(^)(NSString *))gg_setHTitle{
    return ^(NSString *title){
        [self gg_setHighlightedTitle:title];
        return self;
    };
}
- (UIButton *(^)(UIColor *))gg_setHTitleColor{
    return ^(UIColor *color){
        [self gg_setHighlightedTitleColor:color];
        return self;
    };
}
- (UIButton *(^)(UIImage *))gg_setHImage{
    return ^(UIImage *image){
        [self gg_setSelectedImage:image];
        return self;
    };
}
- (UIButton *(^)(UIFont *))gg_setFont{
    return ^(UIFont *value){
        self.titleLabel.font = value;
        return self;
    };
}




- (void)setGg_normalTitle:(NSString *)title{
    [self setTitle:title forState:UIControlStateNormal];
}
- (void)setGg_selectedTitle:(NSString *)title{
    [self setTitle:title forState:UIControlStateSelected];
}

- (void)setGg_highlightedTitle:(NSString *)title{
    [self setTitle:title forState:UIControlStateNormal];
}
- (void)setGg_normalTitleColor:(UIColor *)color{
    [self setTitleColor:color forState:UIControlStateNormal];
}
- (void)setGg_selectedTitleColor:(UIColor *)color{
    [self setTitleColor:color forState:UIControlStateSelected];
}
- (void)setGg_highlightedTitleColor:(UIColor *)color{
    [self setTitleColor:color forState:UIControlStateHighlighted];
}
- (void)setGg_normalImage:(UIImage *)image{
    [self setImage:image forState:UIControlStateNormal];
}
- (void)setGg_selectedImage:(UIImage *)image{
    [self setImage:image forState:UIControlStateSelected];
}
- (void)setGg_highlightedImage:(UIImage *)image{
    [self setImage:image forState:UIControlStateHighlighted];
}




#pragma *********************单独设置 *********************
- (void)gg_setNormalTitle:(NSString *)title{
    [self setTitle:title forState:UIControlStateNormal];
}
- (void)gg_setSelectedTitle:(NSString *)title{
    [self setTitle:title forState:UIControlStateSelected];
}
- (void)gg_setHighlightedTitle:(NSString *)title{
    [self setTitle:title forState:UIControlStateNormal];
    
}
- (void)gg_setNormalTitleColor:(UIColor *)color{
    [self setTitleColor:color forState:UIControlStateNormal];
}
- (void)gg_setSelectedTitleColor:(UIColor *)color{
    [self setTitleColor:color forState:UIControlStateSelected];
}
- (void)gg_setHighlightedTitleColor:(UIColor *)color{
    [self setTitleColor:color forState:UIControlStateHighlighted];
}


- (void)gg_setNormalImage:(UIImage *)image{
    [self setImage:image forState:UIControlStateNormal];
}
- (void)gg_setSelectedImage:(UIImage *)image{
    [self setImage:image forState:UIControlStateSelected];
}
- (void)gg_setHighlightedImage:(UIImage *)image{
    [self setImage:image forState:UIControlStateHighlighted];
}

- (void)gg_configButtonWithBlock:(void(^)(UIButton *button))block{
    block(self);
}

@end

