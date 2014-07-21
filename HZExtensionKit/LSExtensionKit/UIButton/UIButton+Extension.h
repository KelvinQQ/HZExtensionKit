//
//  UIButton+Extension.h
//  HZExtensionKit
//
//  Created by History on 14-4-27.
//  Copyright (c) 2014年 History. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Extension)
- (void)setTitle:(NSString *)title normalBgImage:(NSString *)normal highlightedBgImage:(NSString *)highlighted;
- (void)setNormalBgImage:(NSString *)normal highlightedBgImage:(NSString *)highlighted;
- (void)setNormalTitle:(NSString *)normal highlightedTitle:(NSString *)highlighted;
- (void)setNormalTitle:(NSString *)normal;
- (NSString *)normalTitle;
@end
