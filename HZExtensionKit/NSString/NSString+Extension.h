//
//  NSString+Extension.h
//  HZExtensionKit
//
//  Created by History on 14-4-27.
//  Copyright (c) 2014年 History. All rights reserved.
//

@import Foundation;

@interface NSString (UUID)
+ (NSString *)stringForUUID;
@end

@interface NSString (URLEncode)
- (NSString *)stringByUTF8Encode;
- (NSString *)stringByUTF8Decode;
@end

@interface NSString (Encryption)
- (NSString *)md5;
- (NSString*)sha1;
- (NSString *)BASE64_HMAC_SHA1EncryptWithPrivateKey:(NSString *)key;
@end

@interface NSString (URLQuery)
- (NSDictionary *)queryDictionary;
@end

@interface NSString (HTMLReplace)
- (NSString *)replaceHTMLEntities;
@end


@interface NSString (Spell)
/**
 *  汉字全拼
 *
 *  @return hanziquanpin
 */
- (NSString *)spelling;
/**
 *  汉字全拼
 *
 *  @param space 是否用空格分开
 *
 *  @return han zi quan pin
 */
- (NSString *)spellingWithSpace:(BOOL)space;
/**
 *  汉字首字母
 *
 *  @return hzszm
 */
- (NSString *)spellingInitial;
@end
