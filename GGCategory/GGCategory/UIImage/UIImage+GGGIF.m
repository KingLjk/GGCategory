//
//  UIImage+GGGIF.m
//  GGCategory
//
//  Created by GG on 2018/3/13.
//  Copyright © 2018年 GG. All rights reserved.
//

#import "UIImage+GGGIF.h"

#import <ImageIO/ImageIO.h>

@implementation UIImage (GGGIF)

+ (UIImage *)gg_gifSupportedWithName:(NSString *)name{
    
    NSString *file = [[NSBundle mainBundle] pathForResource:name ofType:nil];
    
    return [self gg_gifSupportedWithFile:file];
}

+ (UIImage *)gg_gifSupportedWithFile:(NSString *)file{
    return [self gg_gifSupportedWithData:[NSData dataWithContentsOfFile:file]];
}


+ (UIImage *)gg_gifSupportedWithData:(NSData *)data{
    if (!data) {
        return nil;
    }
    CGImageSourceRef imageSource = CGImageSourceCreateWithData((__bridge CFDataRef)data, NULL);
    size_t count = CGImageSourceGetCount(imageSource);
    UIImage *animatedImage;
    if (count <= 1) {
        CFRelease(imageSource);
        animatedImage = [[UIImage alloc] initWithData:data];
    }else{
        NSMutableArray *images = [NSMutableArray arrayWithCapacity:count];
        NSTimeInterval duration = 0.0f;
        for (size_t i = 0; i<count; i++) {
            CGImageRef imageRef = CGImageSourceCreateImageAtIndex(imageSource, i, NULL);
            duration +=[self frameDurationAtIndex:i source:imageSource];
            UIImage *image = [UIImage imageWithCGImage:imageRef scale:[UIScreen mainScreen].scale orientation:UIImageOrientationUp];
            CGImageRelease(imageRef);
            [images addObject:image];
        }
        CFRelease(imageSource);
        animatedImage = [UIImage animatedImageWithImages:images duration:duration];
    }
    return animatedImage;
}
+ (float)frameDurationAtIndex:(NSUInteger)index source:(CGImageSourceRef)source {
    float frameDuration = 0.1f;
    CFDictionaryRef cfFrameProperties = CGImageSourceCopyPropertiesAtIndex(source, index, nil);
    NSDictionary *frameProperties = (__bridge NSDictionary *)cfFrameProperties;
    NSDictionary *gifProperties = frameProperties[(NSString *)kCGImagePropertyGIFDictionary];
    
    NSNumber *delayTimeUnclampedProp = gifProperties[(NSString *)kCGImagePropertyGIFUnclampedDelayTime];
    if (delayTimeUnclampedProp) {
        frameDuration = [delayTimeUnclampedProp floatValue];
    }
    else {
        NSNumber *delayTimeProp = gifProperties[(NSString *)kCGImagePropertyGIFDelayTime];
        if (delayTimeProp) {
            frameDuration = [delayTimeProp floatValue];
        }
    }
    if (frameDuration < 0.011f) {
        frameDuration = 0.100f;
    }
    CFRelease(cfFrameProperties);
    return frameDuration;
}


@end
