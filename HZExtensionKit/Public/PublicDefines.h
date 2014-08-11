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

#ifndef HZIsIPad
#define HZIsIPad    (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#endif

#ifndef HZIsRetina
#define HZIsRetina ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) : NO)
#endif

#ifndef HZStringFromInt
#define HZStringFromInt(intValue)           [NSString stringWithFormat:@"%i", intValue]
#endif

#ifndef HZStringFromFloat
#define HZStringFromFloat(floatValue)       [NSString stringWithFormat:@"%f", floatValue]
#endif

#ifndef HZStringFromUTF8String
#define HZStringFromUTF8String(CString)     [NSString stringWithUTF8String:CString]
#endif

#ifndef HZDegreesToRadians
#define HZDegreesToRadians(d) ((d) * M_PI / 180.0f)
#endif

#ifndef HZRadiansToDegrees
#define HZRadiansToDegrees(r) ((r) * 180.0f / M_PI)
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

#ifdef HZClearColor
#define HZClearColor            [UIColor clearColor]
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


#ifndef HZLog

//#define WriteToLogFile

#ifdef DEBUG

#ifdef WriteToLogFile
#define HZLog(fmt, ...) \
    NSLog(@"\n<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< [LOG START %s : %d]\n" fmt @"\n[LOG END] >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\n\n", __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__); \
    { \
        NSString *format = [NSString stringWithFormat:@"\n<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< [LOG START %s : %d]\n" fmt @"\n[LOG END] >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\n\n", __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__]; \
        NSString *path = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0] stringByAppendingPathComponent:@"log.txt"]; \
        if (![[NSFileManager defaultManager] fileExistsAtPath:path]) { \
            fprintf(stderr,"Creating file at %s",[path UTF8String]); \
            [[NSData data] writeToFile:path atomically:YES]; \
        } \
        NSFileHandle *handle = [NSFileHandle fileHandleForWritingAtPath:path]; \
        [handle truncateFileAtOffset:[handle seekToEndOfFile]]; \
        [handle writeData:[format dataUsingEncoding:NSUTF8StringEncoding]]; \
        [handle closeFile]; \
    }
#else
#define HZLog(fmt, ...) \
    NSLog(@"\n<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< [LOG START %s : %d]\n" fmt @"\n[LOG END] >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\n\n", __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#endif

#else

#define HZLog(fmt, ...) \
    do{}while(0);
#endif

#define HZLogCGRect(rc)     HZLog(@"CGRect : (%f, %f) - (%f, %f)", rc.origin.x, rc.origin.y, rc.size.width, rc.size.height)
#define HZLogCGPoint(pt)    HZLog(@"CGPoint : (%f, %f)", pt.x, pt.y)
#define HZLogCGSize(sz)     HZLog(@"CGSize : (%f, %f)", sz.width, sz.height)

#endif

#endif
