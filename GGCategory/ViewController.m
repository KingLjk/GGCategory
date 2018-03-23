//
//  ViewController.m
//  GGCategory
//
//  Created by 李佳贵 on 2018/3/13.
//  Copyright © 2018年 李佳贵. All rights reserved.
//

#import "ViewController.h"

#import "Person.h"
#import "Son.h"

#import "GGCategoryHeader.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSString *title = @"提示";
    NSString *message = @"阿警方立即啊啦放假啦";
    [self gg_showAlertWithTitle:title message:message actionWithTitle:nil handler:^{
        NSLog(@"...");
    }];
    
}


@end
