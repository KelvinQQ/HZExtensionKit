//
//  PublicDefines.h
//  HZExtensionKit
//
//  Created by History on 14-4-27.
//  Copyright (c) 2014年 History. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#ifndef HZExtensionKit_HZDefines_h
#define HZExtensionKit_HZDefines_h

#if !__has_feature(objc_arc)
#define HZ_RELSEAR(__pointer)           [pointer release]
#define HZ_WEAK                         assign
#define HZ_STRONG                       retain
#define HZ_AUTORELEASE(__pointer)       [pointer autorelease]
#define HZ_RETAIN(__pointer)            [__pointer retain]
#else
#define HZ_REHZEAR(pointer)
#define HZ_WEAK                         weak
#define HZ_STRONG                       strong
#define HZ_AUTORELEASE(__pointer)       pointer
#define HZ_RETAIN(__pointer)            __pointer
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

#ifndef kAppDelegate
#define kAppDelegate            ([UIApplication sharedApplication].delegate)
#endif

#ifndef kDeviceVersion
#define kDeviceVersion          [[[UIDevice currentDevice] systemVersion] floatValue]
#endif

#ifndef GBKEncoding
#define GBKEncoding                     CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000)
#endif

#ifndef InitVc
#define InitVc(sbName, vcIdf)   [[UIStoryboard storyboardWithName:sbName bundle:nil] instantiateViewControllerWithIdentifier:vcIdf];
#endif

#ifndef LoadNib
#define LoadNib(nibName)    [[[NSBundle mainBundle] loadNibNamed:nibName owner:self options:nil] lastObject];
#endif

#ifndef NSRangeMake
static inline NSRange NSRangeMake(NSUInteger location, NSUInteger length) {
    NSRange r;
    r.location = location;
    r.length = length;
    return r;
}
#endif

void HZLog(NSString *log, ...);
void HZLogCGRect(CGRect rc);
void HZLogCGPoint(CGPoint pt);
void HZLogCGSize(CGSize sz);

#endif
