//
//  UICollectionViewFlowLayout+GGConfiguration.m
//  GGCategory
//
//  Created by GG on 2018/3/15.
//  Copyright © 2018年 GG. All rights reserved.
//

#import "UICollectionViewFlowLayout+GGConfiguration.h"

@implementation UICollectionViewFlowLayout (GGConfiguration)

- (UICollectionViewFlowLayout * (^)(CGSize))setItemSize{
    return ^(CGSize value){
        self.itemSize = value;
        return self;
    };
}

- (UICollectionViewFlowLayout * (^)(UIEdgeInsets))setSectionInset{
    return ^(UIEdgeInsets value){
        self.sectionInset = value;
        return self;
    };
}


- (UICollectionViewFlowLayout * (^)(CGFloat))setMinimumLineSpacing{
    return ^(CGFloat value){
        self.minimumLineSpacing = value;
        return self;
    };
}

- (UICollectionViewFlowLayout * (^)(CGFloat))setMinimumInteritemSpacing{
    return ^(CGFloat value){
        self.minimumInteritemSpacing = value;
        return self;
    };
}

- (UICollectionViewFlowLayout * (^)(UICollectionViewScrollDirection))setScrollDirection{
    return ^(UICollectionViewScrollDirection value){
        self.scrollDirection = value;
        return self;
    };
}

@end
