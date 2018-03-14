//
//  UICollectionViewFlowLayout+GGConfiguration.h
//  GGCategory
//
//  Created by GG on 2018/3/15.
//  Copyright © 2018年 GG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionViewFlowLayout (GGConfiguration)
- (UICollectionViewFlowLayout * (^)(CGSize))setItemSize;

- (UICollectionViewFlowLayout * (^)(UIEdgeInsets))setSectionInset;


- (UICollectionViewFlowLayout * (^)(CGFloat))setMinimumLineSpacing;

- (UICollectionViewFlowLayout * (^)(CGFloat))setMinimumInteritemSpacing;

- (UICollectionViewFlowLayout * (^)(UICollectionViewScrollDirection))setScrollDirection;


@end
