//
//  UILabel+GGConfiguration.m
//  GGCategory
//
//  Created by GG on 2018/3/15.
//  Copyright © 2018年 GG. All rights reserved.
//

#import "UILabel+GGConfiguration.h"

@implementation UILabel (GGConfiguration)

- (UILabel * (^) (UIFont *))gg_setFont{
    return ^(UIFont *value){
        self.font = value;
        return self;
    };
}

- (UILabel * (^) (UIColor *))gg_setTextColor{
    return ^(UIColor *value){
        self.textColor = value;
        return self;
    };
}
- (UILabel * (^) (NSTextAlignment))gg_setTextAlignment{
    return ^(NSTextAlignment value){
        self.textAlignment = value;
        return self;
    };
}
- (UILabel * (^) (NSString *))gg_setText{
    return ^(NSString *value){
        self.text = value;
        return self;
    };
}
- (UILabel * (^) (NSAttributedString *))gg_setAttributedText{
    return ^(NSAttributedString *value){
        self.attributedText = value;
        return self;
    };
}

- (void)gg_configLabelWithBlock:(void(^)(UILabel *label))block{
    block(self);
}

@end

