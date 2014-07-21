//
//  UIAlertView+Extension.m
//  HZExtensionKit
//
//  Created by History on 14-4-27.
//  Copyright (c) 2014年 History. All rights reserved.
//

#import "UIAlertView+Extension.h"

@implementation UIAlertView (Extension)
+ (void)showTitle:(NSString *)title message:(NSString *)message confirmTitle:(NSString *)confirm
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:confirm otherButtonTitles: nil];
    [alert show];
}
+ (void)showTitle:(NSString *)title message:(NSString *)message
{
    [UIAlertView showTitle:title message:message confirmTitle:@"确定"];
}
+ (void)showMessage:(NSString *)message
{
    [UIAlertView showTitle:@"" message:message];
}
@end
