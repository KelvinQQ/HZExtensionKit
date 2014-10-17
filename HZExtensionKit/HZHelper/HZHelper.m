//
//  HZHelper.m
//  HZExtensionKit
//
//  Created by History on 14-10-17.
//  Copyright (c) 2014年 History. All rights reserved.
//

#import "HZHelper.h"

@implementation HZHelper

@end

@implementation HZHelper (AppConfig)

+ (NSString *)appBundleIdentifier
{
    NSString *identifier = [[NSBundle mainBundle] bundleIdentifier];
    return identifier;
}

+ (NSString *)appVersion
{
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    return infoDictionary[@"CFBundleShortVersionString"];
}

+ (NSString *)appBuildVerion
{
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    return infoDictionary[@"CFBundleVersion"];
}
@end

@implementation HZHelper (Regular)

+ (BOOL) validateEmail:(NSString *)email
{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:email];
}

@end