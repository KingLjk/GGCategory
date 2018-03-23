//
//  UIViewController+GGAlert.m
//  GGCategory
//
//  Created by GG on 2018/3/23.
//  Copyright © 2018年 GG. All rights reserved.
//

#import "UIViewController+GGAlert.h"

@implementation UIViewController (GGAlert)


- (void)gg_showAlertWithTitle:(NSString *)title message:(NSString *)message actionWithTitle:(NSString *)actionWithTitle handler:(void(^)(void))handler{
    [self gg_showAlertWithTitle:title message:message actionWithTitle:actionWithTitle actionStyle:UIAlertActionStyleDefault handler:handler];
}
- (void)gg_showAlertWithTitle:(NSString *)title message:(NSString *)message actionWithTitle:(NSString *)actionWithTitle actionStyle:(UIAlertActionStyle)style  handler:(void(^)(void))handler{
    [self gg_showAlertWithTitle:title message:message alertControllerStyle:UIAlertControllerStyleAlert actionWithTitle:actionWithTitle actionStyle:style handler:handler];
}
- (void)gg_showAlertWithTitle:(NSString *)title message:(NSString *)message alertControllerStyle:(UIAlertControllerStyle)alertStyle actionWithTitle:(NSString *)actionWithTitle actionStyle:(UIAlertActionStyle)style  handler:(void(^)(void))handler{
    
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:alertStyle];
    
    UIAlertAction *action = [UIAlertAction actionWithTitle:actionWithTitle ? actionWithTitle : @"确定" style:style handler:^(UIAlertAction * _Nonnull action) {
        if (handler) {
            handler();
        }
    }];
    [alertVC addAction:action];
    [self presentViewController:alertVC animated:YES completion:nil];
}


@end
