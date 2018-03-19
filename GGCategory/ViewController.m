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
    // Do any additional setup after loading the view, typically from a nib.
    /*
     @property (nonatomic, copy)NSString *name;
     
     @property (nonatomic, copy)NSString *ID;
     
     
     @property (nonatomic, copy)NSString *introduction;

     */
    
    NSDictionary *dict = @{
                           @"name":@"tom",
                           @"id":@1024,
                           @"description":@"Tom is a boy!",
                           @"baby":@{
                                   @"name":@"哪吒",
                                   @"nick":@"哪吒",
                                   },
                           @"test0":@{
                                   @"number":@2,
                                   @"nick":@"哪吒",
                                   },
                           @"test1":@{
                                   @"nick":@"哪吒",
                                   },
                           @"test2":@{
                                   @"name":@1024,
                                   },
                           @"array0":@[
                                   @"name1",
                                   @"name2",
                                   ],
                           @"array1":@[
                                   @"name1",
                                   @100,
                                   ],
                           @"array2":@[
                                   @"name1",
                                    @{
                                       @"number":@2,
                                       @"nick":@"哪吒",
                                       }
                                   ],
                           };
    
    
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        NSLog(@"%@",NSStringFromClass([obj class]));
    }];
    NSLog(@"......");
    
    
    Person *p = [Person gg_objectWithDict:dict];
//
//    NSLog(@"--->%@",p.introduction);
//    NSLog(@"--->%@",p.ID);
//
    NSLog(@"%@",p.son.name);
    
    NSLog(@"%@",p.array2);
    
    NSLog(@"test0: %@",p.test0);
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
}


@end
