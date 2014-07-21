//
//  UIButton+Extension.m
//  HZExtensionKit
//
//  Created by History on 14-4-27.
//  Copyright (c) 2014年 History. All rights reserved.
//

#import "UIButton+Extension.h"

@implementation UIButton (Extension)
- (void)setTitle:(NSString *)title normalBgImage:(NSString *)normal highlightedBgImage:(NSString *)highlighted
{
    [self setTitle:title forState:UIControlStateNormal];
    if (normal) {
        [self setBackgroundImage:[UIImage imageNamed:normal] forState:UIControlStateNormal];
    }
    if (highlighted) {
        [self setBackgroundImage:[UIImage imageNamed:highlighted] forState:UIControlStateHighlighted];
    }
}
- (void)setNormalBgImage:(NSString *)normal highlightedBgImage:(NSString *)highlighted
{
    if (normal) {
        [self setBackgroundImage:[UIImage imageNamed:normal] forState:UIControlStateNormal];
    }
    if (highlighted) {
        [self setBackgroundImage:[UIImage imageNamed:highlighted] forState:UIControlStateHighlighted];
    }
}
- (void)setNormalTitle:(NSString *)normal highlightedTitle:(NSString *)highlighted
{
    [self setTitle:normal forState:UIControlStateNormal];
    [self setTitle:highlighted forState:UIControlStateHighlighted];
}

- (void)setNormalTitle:(NSString *)normal
{
    [self setTitle:normal forState:UIControlStateNormal];
}

- (NSString *)normalTitle
{
    return [self titleForState:UIControlStateNormal];
}
@end
