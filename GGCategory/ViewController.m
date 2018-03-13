//
//  ViewController.m
//  GGCategory
//
//  Created by 李佳贵 on 2018/3/13.
//  Copyright © 2018年 李佳贵. All rights reserved.
//

#import "ViewController.h"



#import "UIView+GGFrame.h"




@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *redView = [UIView new];
    redView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:redView];
    
    
    redView.originX(100).originY(redView.x).sizeWidth(100).sizeHeight(redView.width * 2);
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
