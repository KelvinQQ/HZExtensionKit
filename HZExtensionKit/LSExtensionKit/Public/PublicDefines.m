//
//  PublicDefines.m
//  HZExtensionKit
//
//  Created by History on 14-4-27.
//  Copyright (c) 2014年 History. All rights reserved.
//

#include "PublicDefines.h"

#define LogFileName @"log.txt"

void HZLog(NSString *log, ...)
{
#ifdef DEBUG
    va_list args;
    va_start(args, log);
    NSString *str = [[NSString alloc] initWithFormat:log arguments:args];
    va_end(args);
    NSLog(@"%@", str);
#ifdef WriteToLogFile
    NSString *withDateStr = [NSString stringWithFormat:@"日期:%@,文件名:%s, line:%d, function:%s, 日志内容:%@\n",[NSDate date],__FILE__,__LINE__,__PRETTY_FUNCTION__,str ];
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = ([paths count] > 0) ? [paths objectAtIndex:0] : nil;
    NSString *path = [documentsDirectory stringByAppendingPathComponent:LogFileName];
    
    NSFileManager *filemanager = [NSFileManager defaultManager];
	BOOL isExist = [filemanager fileExistsAtPath:path];
    
    if (!isExist)
    {
        fprintf(stderr,"Creating file at %s",[path UTF8String]);
        [[NSData data] writeToFile:path atomically:YES];
    }
    
    NSFileHandle *handle = [NSFileHandle fileHandleForWritingAtPath:path];
    [handle truncateFileAtOffset:[handle seekToEndOfFile]];
    [handle writeData:[withDateStr dataUsingEncoding:NSUTF8StringEncoding]];
    [handle closeFile];
#endif
#endif
}

void HZLogCGRect(CGRect rc)
{
    HZLog(@"CGRect : (%f, %f) - (%f, %f)", rc.origin.x, rc.origin.y, rc.size.width, rc.size.height);
}
void HZLogCGPoint(CGPoint pt)
{
    HZLog(@"CGPoint : (%f, %f)", pt.x, pt.y);
}
void HZLogCGSize(CGSize sz)
{
    HZLog(@"CGSize : (%f, %f)", sz.width, sz.height);
}