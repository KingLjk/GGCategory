//
//  UIView+GGConfiguration.m
//  GGCategory
//
//  Created by GG on 2018/3/16.
//  Copyright © 2018年 GG. All rights reserved.
//

#import "UIView+GGConfiguration.h"

@implementation UIView (GGConfiguration)


- (UIView *(^)(CGFloat ))cornerRadius{
    return ^(CGFloat cornerRadius){
        self.layer.cornerRadius = cornerRadius;
        self.layer.masksToBounds = YES;
        
        
        return self;
    };
}

- (UIView *(^)(CGFloat ))borderWidth{
    return ^(CGFloat borderWidth){
        self.layer.borderWidth = borderWidth;
        return self;
    };
}


- (UIView *(^)(UIColor *))borderColor{
    return ^(UIColor* borderColor){
        self.layer.borderColor = [borderColor CGColor];
        return self;
    };
}



@end
