//
//  UITableViewCell+GGInstance.m
//  GGCategory
//
//  Created by GG on 2018/3/15.
//  Copyright © 2018年 GG. All rights reserved.
//

#import "UITableViewCell+GGInstance.h"

@implementation UITableViewCell (GGInstance)

+ (instancetype)cellWithTableView:(UITableView *)tableView{
    return [self cellWithTableView:tableView style:UITableViewCellStyleDefault];
}
+ (instancetype)cellWithTableView:(UITableView *)tableView style:(UITableViewCellStyle)style{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([self class])];
    if (!cell) {
        NSString *reuseIdentifier = [NSString stringWithFormat:@"%@-%ld",NSStringFromClass([self class]),(long)style];
        cell = [[self alloc] initWithStyle:style reuseIdentifier:reuseIdentifier];
    }
    return cell;
}

@end
