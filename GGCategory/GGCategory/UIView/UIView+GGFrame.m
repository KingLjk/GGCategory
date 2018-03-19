//
//  UIView+GGFrame.m
//  GGCategory2018
//
//  Created by GG on 2018/3/12.
//  Copyright © 2018年 GG. All rights reserved.
//

#import "UIView+GGFrame.h"

@implementation UIView (GGFrame)

- (CGFloat)x {
    return self.frame.origin.x;
}
- (void)setX:(CGFloat)x {
    self.frame = CGRectMake(x, self.y, self.width, self.height);
}
- (CGFloat)y {
    return self.frame.origin.y;
}
- (void)setY:(CGFloat)y {
    self.frame = CGRectMake(self.x, y, self.width, self.height);
}
- (CGFloat)height {
    return self.frame.size.height;
}
- (void)setHeight:(CGFloat)height {
    self.frame = CGRectMake(self.x, self.y, self.width, height);
}
- (CGFloat)width {
    
    return self.frame.size.width;
}
- (void)setWidth:(CGFloat)width {
    self.frame = CGRectMake(self.x, self.y, width, self.height);
}

- (CGSize)size{
    return self.frame.size;
}
- (void)setSize:(CGSize)size{
    self.frame = CGRectMake(self.x, self.y, size.width, size.height);
}
- (CGPoint)origin{
    return self.frame.origin;
}
- (void)setOrigin:(CGPoint)origin{
    self.frame = CGRectMake(origin.x, origin.y, self.width, self.height);
}



- (UIView *(^)(CGFloat))originX{
    return ^(CGFloat value){
        self.x = value;
        return self;
    };
}
- (UIView *(^)(CGFloat))originY{
    return ^(CGFloat value){
        self.y = value;
        return self;
    };
}
- (UIView *(^)(CGPoint))gg_origin{
    return ^(CGPoint value){
        self.origin = value;
        return self;
    };
}

- (UIView *(^)(CGSize))gg_size{
    return ^(CGSize value){
        self.size = value;
        return self;
    };
}

- (UIView *(^)(CGFloat))sizeWidth{
    return ^(CGFloat value){
        self.width = value;
        return self;
    };
}

- (UIView *(^)(CGFloat))sizeHeight{
    return ^(CGFloat value){
        self.height = value;
        return self;
    };
}
    
@end
