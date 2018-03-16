//
//  UILabel+GGConfiguration.m
//  GGCategory
//
//  Created by GG on 2018/3/15.
//  Copyright © 2018年 GG. All rights reserved.
//

#import "UILabel+GGConfiguration.h"

@implementation UILabel (GGConfiguration)


- (UILabel * (^) (UIFont *))setFont{
    return ^(UIFont *value){
        
        self.font = value;
        return self;
    };
}

- (UILabel * (^) (UIColor *))setTextColor{
    return ^(UIColor *value){
        self.textColor = value;
        return self;
    };
}
- (UILabel * (^) (NSTextAlignment))setTextAlignment{
    return ^(NSTextAlignment value){
        self.textAlignment = value;
        return self;
    };
}
- (UILabel * (^) (NSString *))setText{
    return ^(NSString *value){
        self.text = value;
        return self;
    };
}
- (UILabel * (^) (NSAttributedString *))setAttributedText{
    return ^(NSAttributedString *value){
        self.attributedText = value;
        return self;
    };
}



@end

