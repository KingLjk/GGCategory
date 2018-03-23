//
//  UIView+GGFrame.m
//  GGCategory2018
//
//  Created by GG on 2018/3/12.
//  Copyright © 2018年 GG. All rights reserved.
//

#import "UIView+GGFrame.h"

@implementation UIView (GGFrame)

- (CGFloat)gg_x {
    return self.frame.origin.x;
}
- (void)setGg_x:(CGFloat)x {
    self.frame = CGRectMake(x, self.gg_y, self.gg_width, self.gg_height);
}
- (CGFloat)gg_y {
    return self.frame.origin.y;
}
- (void)setGg_y:(CGFloat)y {
    self.frame = CGRectMake(self.gg_x, y, self.gg_width, self.gg_height);
}
- (CGFloat)gg_width {
    
    return self.frame.size.width;
}
- (void)setGg_width:(CGFloat)width {
    self.frame = CGRectMake(self.gg_x, self.gg_y, width, self.gg_height);
}
- (CGFloat)gg_height {
    return self.frame.size.height;
}
- (void)setGg_height:(CGFloat)height {
    self.frame = CGRectMake(self.gg_x, self.gg_y, self.gg_width, height);
}

- (CGPoint)gg_origin{
    return self.frame.origin;
}
- (void)setGg_origin:(CGPoint)origin{
    self.frame = CGRectMake(origin.x, origin.y, self.gg_width, self.gg_height);
}

- (CGSize)gg_size{
    return self.frame.size;
}
- (void)setGg_size:(CGSize)size{
    self.frame = CGRectMake(self.gg_x, self.gg_y, size.width, size.height);
}


#pragma ********************* 函数式 + 链式(带参) *********************
- (UIView *(^)(CGFloat))gg_setX{
    return ^(CGFloat value){
        self.gg_x = value;
        return self;
    };
}
- (UIView *(^)(CGFloat))gg_setY{
    return ^(CGFloat value){
        self.gg_y = value;
        return self;
    };
}

- (UIView *(^)(CGFloat))gg_setWidth{
    return ^(CGFloat value){
        self.gg_width = value;
        return self;
    };
}
- (UIView *(^)(CGFloat))gg_setHeight{
    return ^(CGFloat value){
        self.gg_height = value;
        return self;
    };
}

- (UIView *(^)(CGPoint))gg_setOrigin{
    return ^(CGPoint value){
        self.gg_origin = value;
        return self;
    };
}

- (UIView *(^)(CGSize))gg_setSize{
    return ^(CGSize value){
        self.gg_size = value;
        return self;
    };
}



@end
