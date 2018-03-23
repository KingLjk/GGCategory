//
//  UITableViewCell+GGInstance.m
//  GGCategory
//
//  Created by GG on 2018/3/15.
//  Copyright © 2018年 GG. All rights reserved.
//

#import "UITableViewCell+GGInstance.h"

@implementation UITableViewCell (GGInstance)

+ (instancetype)gg_cellWithTableView:(UITableView *)tableView{
    return [self gg_cellWithTableView:tableView style:UITableViewCellStyleDefault];
}
+ (instancetype)gg_cellWithTableView:(UITableView *)tableView style:(UITableViewCellStyle)style{
    NSString *reuseIdentifier = [NSString stringWithFormat:@"%@-%ld",NSStringFromClass([self class]),(long)style];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    if (!cell) {
        cell = [[self alloc] initWithStyle:style reuseIdentifier:reuseIdentifier];
    }
    return cell;
}

@end
