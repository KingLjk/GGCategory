//
//  UIImage+GGGIF.h
//  GGCategory
//
//  Created by GG on 2018/3/13.
//  Copyright © 2018年 GG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (GGGIF)


+ (UIImage *)gg_gifSupportedWithFile:(NSString *)file;
+ (UIImage *)gg_gifSupportedWithName:(NSString *)name;

+ (UIImage *)gg_gifSupportedWithData:(NSData *)data;
@end
