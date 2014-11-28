//
//  NSURL+Extension.h
//  HZExtensionKit
//
//  Created by History on 14-9-26.
//  Copyright (c) 2014年 History. All rights reserved.
//

@import Foundation;

@interface NSURL (QueryDictionary)
- (NSDictionary *)queryDictionary;
- (NSString *)queryValueWithKey:(NSString *)key;
- (BOOL)checkHostWithString:(NSString *)host;
- (BOOL)checkSchemeWithString:(NSString *)scheme;
@end
