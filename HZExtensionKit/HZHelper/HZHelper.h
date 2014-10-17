//
//  HZHelper.h
//  HZExtensionKit
//
//  Created by History on 14-10-17.
//  Copyright (c) 2014年 History. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HZHelper : NSObject

@end

@interface HZHelper (AppConfig)

+ (NSString *)appBundleIdentifier;
+ (NSString *)appVersion;
+ (NSString *)appBuildVerion;
@end

@interface HZHelper (Regular)
+ (BOOL)validateEmail:(NSString *)email;
@end