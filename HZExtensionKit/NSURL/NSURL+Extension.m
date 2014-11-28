//
//  NSURL+Extension.m
//  HZExtensionKit
//
//  Created by History on 14-9-26.
//  Copyright (c) 2014年 History. All rights reserved.
//

#import "NSURL+Extension.h"

@implementation NSURL (QueryDictionary)
- (NSDictionary *)queryDictionary
{
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    NSString *queryString = self.query;
    NSArray *components = [queryString componentsSeparatedByString:@"&"];
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

- (NSString *)queryValueWithKey:(NSString *)key
{
    return [self queryDictionary][key];
}

- (BOOL)checkHostWithString:(NSString *)host
{
    if ([self.host isEqualToString:host]) {
        return YES;
    }
    else {
        return NO;
    }
}

- (BOOL)checkSchemeWithString:(NSString *)scheme
{
    if ([self.scheme isEqualToString:scheme]) {
        return YES;
    }
    else {
        return NO;
    }
}
@end
