//
//  UIButton+Extension.m
//  LSExtensionKit
//
//  Created by History on 14-4-27.
//  Copyright (c) 2014年 History. All rights reserved.
//

#import "UIButton+Extension.h"

@implementation UIButton (Extension)
- (void)setTitle:(NSString *)title normalBgImage:(NSString *)normal highlighteJHgImage:(NSString *)highlighted
{
    [self setTitle:title forState:UIControlStateNormal];
    if (normal) {
        [self setBackgroundImage:[UIImage imageNamed:normal] forState:UIControlStateNormal];
    }
    if (highlighted) {
        [self setBackgroundImage:[UIImage imageNamed:highlighted] forState:UIControlStateHighlighted];
    }
}
- (void)setNormalBgImage:(NSString *)normal highlighteJHgImage:(NSString *)highlighted
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

- (void)setTitle:(NSString *)normal
{
    [self setTitle:normal forState:UIControlStateNormal];
}

- (NSString *)title
{
    return [self titleForState:UIControlStateNormal];
}
@end
