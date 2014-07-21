//
//  UIAlertView+Extension.h
//  HZExtensionKit
//
//  Created by History on 14-4-27.
//  Copyright (c) 2014年 History. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertView (Extension)
+ (void)showMessage:(NSString *)message;
+ (void)showTitle:(NSString *)title message:(NSString *)message;
+ (void)showTitle:(NSString *)title message:(NSString *)message confirmTitle:(NSString *)confirm;
@end
