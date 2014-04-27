//
//  PublicDefines.h
//  LSExtensionKit
//
//  Created by History on 14-4-27.
//  Copyright (c) 2014年 History. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#ifndef LSExtensionKit_LSDefines_h
#define LSExtensionKit_LSDefines_h

#if !__has_feature(objc_arc)
#define LS_RELSEAR(__pointer)           [pointer release]
#define LS_WEAK                         assign
#define LS_STRONG                       retain
#define LS_AUTORELEASE(__pointer)       [pointer autorelease]
#define LS_RETAIN(__pointer)            [__pointer retain]
#else
#define LS_RELSEAR(pointer)
#define LS_WEAK                         weak
#define LS_STRONG                       strong
#define LS_AUTORELEASE(__pointer)       pointer
#define LS_RETAIN(__pointer)            __pointer
#endif

#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)
#define kDeviceVersion          [[[UIDevice currentDevice] systemVersion] floatValue]

#ifndef NSStringFromInt
#define NSStringFromInt(intValue)           [NSString stringWithFormat:@"%i", intValue]
#endif

#ifndef NSStringFromFloat
#define NSStringFromFloat(floatValue)       [NSString stringWithFormat:@"%f", floatValue]
#endif

#ifndef NSStringFromUTF8String
#define NSStringFromUTF8String(CString)     [NSString stringWithUTF8String:CString]
#endif

#ifndef DEGREES_TO_RADIANS
#define DEGREES_TO_RADIANS(d) ((d) * M_PI / 180.0f)
#endif

#ifndef RADIANS_TO_DEGREES
#define RADIANS_TO_DEGREES(r) ((d) * 180.0f / M_PI)
#endif

#ifndef NSRangeMake
static inline NSRange NSRangeMake(NSUInteger location, NSUInteger length) {
    NSRange r;
    r.location = location;
    r.length = length;
    return r;
}
#endif

void LSLog(NSString *log, ...);
void LSLogCGRect(CGRect rc);
void LSLogCGPoint(CGPoint pt);
void LSLogCGSize(CGSize sz);

#endif
