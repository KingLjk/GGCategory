//
//  UITextField+GGConfiguration.m
//  GGCategory
//
//  Created by GG on 2018/3/16.
//  Copyright © 2018年 GG. All rights reserved.
//

#import "UITextField+GGConfiguration.h"

@implementation UITextField (GGConfiguration)


- (UITextField * (^) (UIFont *))gg_setFont{
    return ^(UIFont *value){
        
        self.font = value;
        return self;
    };
}

- (UITextField * (^) (UIColor *))gg_setTextColor{
    return ^(UIColor *value){
        self.textColor = value;
        return self;
    };
}
- (UITextField * (^) (NSTextAlignment))gg_setTextAlignment{
    return ^(NSTextAlignment value){
        self.textAlignment = value;
        return self;
    };
}
- (UITextField * (^) (NSString *))gg_setText{
    return ^(NSString *value){
        self.text = value;
        return self;
    };
}

- (void)gg_configTextFieldWithBlock:(void(^)(UITextField *textField))block{
    block(self);
}
@end
