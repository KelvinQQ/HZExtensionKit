//
//  UIColor+Extension.h
//  HZExtensionKit
//
//  Created by History on 14-4-27.
//  Copyright (c) 2014年 History. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Extension)
+ (UIColor *)colorWith255Red:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue;
+ (UIColor *)colorWith255Red:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;
+ (UIColor *)colorWithHexRGB:(u_int32_t)rgb;
+ (UIColor *)colorWithHexRGB:(u_int32_t)rgb alpha:(CGFloat)alpha;
+ (UIColor *)colorWithHexString:(NSString *)rgb;
@end
