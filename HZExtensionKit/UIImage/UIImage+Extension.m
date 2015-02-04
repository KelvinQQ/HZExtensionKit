//
//  UIImage+Extension.m
//  JHTrain
//
//  Created by History on 14-5-20.
//  Copyright (c) 2014年 History. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size

{
    @autoreleasepool {
        CGRect rect = CGRectMake(0, 0, size.width, size.height);
        UIGraphicsBeginImageContext(rect.size);
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSetFillColorWithColor(context,
                                       color.CGColor);
        CGContextFillRect(context, rect);
        UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return img;
    }
}

- (UIImage *)clipImageWithRect:(CGRect)rect
{
    CGImageRef imageRefOut = CGImageCreateWithImageInRect(self.CGImage, rect);
    UIImage *returnImage = [[UIImage alloc] initWithCGImage:imageRefOut];
    CGImageRelease(imageRefOut);
    return returnImage;
}

- (UIImage *)changeImageToSize:(CGSize)size
{
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0);
    CGRect imageRect = CGRectMake(0.0, 0.0, size.width, size.height);
    [self drawInRect:imageRect];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}
@end
