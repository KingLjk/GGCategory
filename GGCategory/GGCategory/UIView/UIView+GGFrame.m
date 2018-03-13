//
//  UIView+GGFrame.m
//  GGCategory2018
//
//  Created by 李佳贵 on 2018/3/12.
//  Copyright © 2018年 李佳贵. All rights reserved.
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
