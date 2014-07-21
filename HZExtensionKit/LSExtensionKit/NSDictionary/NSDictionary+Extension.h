//
//  NSDictionary+Extension.h
//  JHTrain
//
//  Created by History on 14-5-22.
//  Copyright (c) 2014年 History. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Extension)

@end

@interface NSMutableDictionary (Extension)
- (void)setObjectSafe:(id)anObject forKey:(id<NSCopying>)aKey;
@end