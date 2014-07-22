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

#ifndef HZIsIPhone5
#define HZIsIPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)
#endif

#ifndef NSStringFromInt
#define NSStringFromInt(intValue)           [NSString stringWithFormat:@"%i", intValue]
#endif

#ifndef NSStringFromFloat
#define NSStringFromFloat(floatValue)       [NSString stringWithFormat:@"%f", floatValue]
#endif

#ifndef NSStringFromUTF8String
#define NSStringFromUTF8String(CString)     [NSString stringWithUTF8String:CString]
#endif

#ifndef DegreesToRadians
#define DegreesToRadians(d) ((d) * M_PI / 180.0f)
#endif

#ifndef RadiansToDegrees
#define RadiansToDegrees(r) ((r) * 180.0f / M_PI)
#endif

#ifndef HZApplicationDelegate
#define HZApplicationDelegate   ([UIApplication sharedApplication].delegate)
#endif

#ifndef HZDeviceVersion
#define HZDeviceVersion         [[[UIDevice currentDevice] systemVersion] floatValue]
#endif

#ifndef HZGBKEncoding
#define HZGBKEncoding           CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000)
#endif

#ifndef HZInitVc
#define HZInitVc(sbName, vcIdf) [[UIStoryboard storyboardWithName:sbName bundle:nil] instantiateViewControllerWithIdentifier:vcIdf];
#endif

#ifndef HZLoadNib
#define HZLoadNib(nibName)      [[[NSBundle mainBundle] loadNibNamed:nibName owner:self options:nil] lastObject];
#endif

#ifndef NSRangeMake
static inline NSRange NSRangeMake(NSUInteger location, NSUInteger length)
{
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
