//
//  UITableViewCell+GGInstance.h
//  GGCategory
//
//  Created by GG on 2018/3/15.
//  Copyright © 2018年 GG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewCell (GGInstance)
+ (instancetype)gg_cellWithTableView:(UITableView *)tableView;
+ (instancetype)gg_cellWithTableView:(UITableView *)tableView style:(UITableViewCellStyle)style;

@end
