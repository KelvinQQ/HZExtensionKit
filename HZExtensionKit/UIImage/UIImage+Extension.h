//
//  UIImage+Extension.h
//  JHTrain
//
//  Created by History on 14-5-20.
//  Copyright (c) 2014年 History. All rights reserved.
//

@import UIKit;

@interface UIImage (Extension)
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;
- (UIImage *)clipImageWithRect:(CGRect)rect;
@end
