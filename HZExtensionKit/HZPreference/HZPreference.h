//
//  HZPreference.h
//  HZExtensionKit
//
//  Created by History on 14/11/28.
//  Copyright (c) 2014年 History. All rights reserved.
//

@import Foundation;
@import UIKit;

@interface HZPreference : NSObject
+ (void)saveObject:(id)object forKey:(NSString *)key;
+ (void)saveBool:(BOOL)value forKey:(NSString *)key;
+ (void)saveInteger:(NSInteger)value forKey:(NSString *)key;
+ (void)saveFloat:(CGFloat)value forKey:(NSString *)key;

+ (void)removeObjectForKey:(NSString *)key;

+ (id)objectForKey:(NSString *)key;
+ (BOOL)boolForKey:(NSString *)key;
+ (NSInteger)integerForKey:(NSString *)key;
+ (CGFloat)floatForKey:(NSString *)key;
@end
