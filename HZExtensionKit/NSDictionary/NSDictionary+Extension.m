//
//  NSDictionary+Extension.m
//  JHTrain
//
//  Created by History on 14-5-22.
//  Copyright (c) 2014年 History. All rights reserved.
//

#import "NSDictionary+Extension.h"

@implementation NSDictionary (Extension)

@end

@implementation NSMutableDictionary (Extension)

- (void)setObjectSafely:(id)anObject forKey:(id<NSCopying>)aKey
{
    if (!anObject || !aKey) {
        return;
    }
    [self setObject:anObject forKey:aKey];
}

@end