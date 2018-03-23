//
//  UICollectionViewFlowLayout+GGConfiguration.m
//  GGCategory
//
//  Created by GG on 2018/3/15.
//  Copyright © 2018年 GG. All rights reserved.
//

#import "UICollectionViewFlowLayout+GGConfiguration.h"

@implementation UICollectionViewFlowLayout (GGConfiguration)

- (UICollectionViewFlowLayout * (^)(CGSize))gg_setItemSize{
    return ^(CGSize value){
        self.itemSize = value;
        return self;
    };
}

- (UICollectionViewFlowLayout * (^)(UIEdgeInsets))gg_setSectionInset{
    return ^(UIEdgeInsets value){
        self.sectionInset = value;
        return self;
    };
}


- (UICollectionViewFlowLayout * (^)(CGFloat))gg_setMinimumLineSpacing{
    return ^(CGFloat value){
        self.minimumLineSpacing = value;
        return self;
    };
}

- (UICollectionViewFlowLayout * (^)(CGFloat))gg_setMinimumInteritemSpacing{
    return ^(CGFloat value){
        self.minimumInteritemSpacing = value;
        return self;
    };
}

- (UICollectionViewFlowLayout * (^)(UICollectionViewScrollDirection))gg_setScrollDirection{
    return ^(UICollectionViewScrollDirection value){
        self.scrollDirection = value;
        return self;
    };
}
- (void)gg_configFlowLayoutWithBlock:(void(^)(UICollectionViewFlowLayout *flowLayout))block{
    block(self);
}
@end
