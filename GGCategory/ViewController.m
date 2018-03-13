//
//  ViewController.m
//  GGCategory
//
//  Created by 李佳贵 on 2018/3/13.
//  Copyright © 2018年 李佳贵. All rights reserved.
//

#import "ViewController.h"



#import "GGCategoryHeader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *redView = [UIView new];
    UIColor *color = [UIColor redColor];
    color = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1.0];
    redView.backgroundColor = color;
    
    [self.view addSubview:redView];
    
    redView.originX(100).originY(redView.x).sizeWidth(100).sizeHeight(redView.width * 2);
    
    UIButton *btn = [[UIButton alloc] init];
    
    [self.view addSubview:btn];
    
    [btn.normalTitleAndTitleColor(@"hehe",[UIColor greenColor]).backGroundColor([UIColor yellowColor]) sizeToFit];
    btn.center = self.view.center;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
