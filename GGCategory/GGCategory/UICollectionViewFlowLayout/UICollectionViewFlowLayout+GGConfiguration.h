//
//  UICollectionViewFlowLayout+GGConfiguration.h
//  GGCategory
//
//  Created by GG on 2018/3/15.
//  Copyright © 2018年 GG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionViewFlowLayout (GGConfiguration)
- (UICollectionViewFlowLayout * (^)(CGSize))gg_setItemSize;

- (UICollectionViewFlowLayout * (^)(UIEdgeInsets))gg_setSectionInset;


- (UICollectionViewFlowLayout * (^)(CGFloat))gg_setMinimumLineSpacing;

- (UICollectionViewFlowLayout * (^)(CGFloat))gg_setMinimumInteritemSpacing;

- (UICollectionViewFlowLayout * (^)(UICollectionViewScrollDirection))gg_setScrollDirection;

- (void)gg_configFlowLayoutWithBlock:(void(^)(UICollectionViewFlowLayout *flowLayout))block;
@end
