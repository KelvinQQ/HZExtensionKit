//
//  NSString+Extension.m
//  HZExtensionKit
//
//  Created by History on 14-4-27.
//  Copyright (c) 2014年 History. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (UUID)
+ (NSString *)stringForUUID
{
    CFUUIDRef uuidObj    = CFUUIDCreate(nil);
    NSString *uuidString = (NSString *)CFBridgingRelease(CFUUIDCreateString(nil, uuidObj));
    CFRelease(uuidObj);
    return uuidString;
}
@end

@implementation NSString (URLEncode)

- (NSString *)stringByUTF8Encode
{
    return
    (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(
                                                                          NULL,
                                                                          (__bridge CFStringRef)self,
                                                                          NULL,
                                                                          CFSTR("!*'();:@&=+$,/?%#[]\" "),
                                                                          kCFStringEncodingUTF8
                                                                          )
                                  );
}
- (NSString *)stringByUTF8Decode
{
    return
    (NSString *)CFBridgingRelease(CFURLCreateStringByReplacingPercentEscapes(
                                                                             NULL,
                                                                             (__bridge CFStringRef)self,
                                                                             CFSTR("")
                                                                             )
                                  );
    
}
@end
