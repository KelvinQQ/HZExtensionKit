//
//  NSData+Extension.h
//  HZExtensionKit
//
//  Created by History on 14-9-4.
//  Copyright (c) 2014年 History. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (Encryption)
- (NSData *)aes256EncryptWithKey:(NSString *)key;
- (NSData *)aes256DecryptWithKey:(NSString *)key;
@end
