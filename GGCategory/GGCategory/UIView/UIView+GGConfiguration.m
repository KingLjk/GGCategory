//
//  UIView+GGConfiguration.m
//  GGCategory
//
//  Created by GG on 2018/3/16.
//  Copyright © 2018年 GG. All rights reserved.
//

#import "UIView+GGConfiguration.h"

@implementation UIView (GGConfiguration)


- (UIView *(^)(CGFloat ))gg_setCornerRadius{
    return ^(CGFloat cornerRadius){
        self.layer.cornerRadius = cornerRadius;
        self.layer.masksToBounds = YES;
        return self;
    };
}

- (UIView *(^)(CGFloat ))gg_setBorderWidth{
    return ^(CGFloat borderWidth){
        self.layer.borderWidth = borderWidth;
        return self;
    };
}

- (UIView *(^)(UIColor *))gg_setBorderColor{
    return ^(UIColor* borderColor){
        self.layer.borderColor = [borderColor CGColor];
        return self;
    };
}

- (UIView *(^)(UIColor *))gg_setBackgroundColor{
    return ^(UIColor* value){
        self.backgroundColor = value;
        return self;
    };
}

- (void)gg_configViewWithBlock:(void(^)(UIView *view))block{
    block(self);
}

@end
