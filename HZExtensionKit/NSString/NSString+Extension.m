//
//  NSString+Extension.m
//  HZExtensionKit
//
//  Created by History on 14-4-27.
//  Copyright (c) 2014年 History. All rights reserved.
//

#import "NSString+Extension.h"
#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonHMAC.h>

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

@implementation NSString (Encryption)

- (NSString *)md5
{
    const char *cStr = [self UTF8String];
    unsigned char result[16];
    CC_MD5(cStr, (CC_LONG)strlen(cStr), result);
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}

- (NSString *)sha1
{
    const char *cstr = [self UTF8String];
    NSData *data = [NSData dataWithBytes:cstr length:self.length];
    
    uint8_t digest[CC_SHA1_DIGEST_LENGTH];
    
    CC_SHA1(data.bytes, (CC_LONG)data.length, digest);
    
    NSMutableString* output = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    
    for(int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++) {
        [output appendFormat:@"%02x", digest[i]];
    }
    return output;
    
}

- (NSString *)BASE64_HMAC_SHA1EncryptWithPrivateKey:(NSString *)key
{
    NSData* privateData = [key dataUsingEncoding:NSUTF8StringEncoding];
    NSData* publicData = [self dataUsingEncoding:NSUTF8StringEncoding];
    
    const void* privateBytes = [privateData bytes];
    const void* publicBytes = [publicData bytes];
    
    void* outs = malloc(CC_SHA1_DIGEST_LENGTH);
    
    CCHmac(kCCHmacAlgSHA1, privateBytes, [privateData length], publicBytes, [publicData length], outs);
    
    NSData* signatureData = [NSData dataWithBytesNoCopy:outs length:CC_SHA1_DIGEST_LENGTH freeWhenDone:YES];
    NSString *string = [signatureData base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
    return string;
}

@end

@implementation NSString (URLQuery)

- (NSDictionary *)queryDictionary
{
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    NSArray *components = [self componentsSeparatedByString:@"&"];
    for (NSString *keyValueString in components) {
        NSArray *keyValueArray = [keyValueString componentsSeparatedByString:@"="];
        if (2 == keyValueArray.count) {
            [dictionary setObject:keyValueArray[1] forKey:keyValueArray[0]];
        }
    }
    if (dictionary.count) {
        return dictionary;
    }
    else {
        return nil;
    }
}

@end

@implementation NSString (HTMLReplace)

- (NSString *)replaceHTMLEntities
{
    NSString *sourceString = self;
    sourceString = [sourceString stringByReplacingOccurrencesOfString:@"&nbsp;" withString:@" "];
    sourceString = [sourceString stringByReplacingOccurrencesOfString:@"&quot;" withString:@"\""];
    sourceString = [sourceString stringByReplacingOccurrencesOfString:@"&lt;" withString:@"<"];
    sourceString = [sourceString stringByReplacingOccurrencesOfString:@"&gt;" withString:@">"];
    sourceString = [sourceString stringByReplacingOccurrencesOfString:@"&#160;" withString:@" "];
    return sourceString;
}

@end

@implementation NSString (Spell)

- (NSString *)spelling
{
    return [self spellingWithSpace:NO];
}

- (NSString *)spellingWithSpace:(BOOL)space
{
    if (self.length) {
        NSMutableString *copy = [self mutableCopy];
        CFStringTransform((__bridge CFMutableStringRef)copy, NULL, kCFStringTransformMandarinLatin, NO);
        CFStringTransform((__bridge CFMutableStringRef)copy, NULL, kCFStringTransformStripDiacritics, NO);
        if (!space) {
            [copy replaceOccurrencesOfString:@" " withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, copy.length)];
        }
        return copy;
    }
    else {
        return nil;
    }
}

- (NSString *)spellingInitial
{
    if (self.length) {
        NSMutableString *copy = [self mutableCopy];
        CFStringTransform((__bridge CFMutableStringRef)copy, NULL, kCFStringTransformMandarinLatin, NO);
        CFStringTransform((__bridge CFMutableStringRef)copy, NULL, kCFStringTransformStripDiacritics, NO);
        NSArray *array = [copy componentsSeparatedByString:@" "];
        NSMutableString *initial = [NSMutableString string];
        for (NSString *subSpelling in array) {
            [initial appendString:[subSpelling substringToIndex:1]];
        }
        return initial;
    }
    else {
        return nil;
    }
}

@end