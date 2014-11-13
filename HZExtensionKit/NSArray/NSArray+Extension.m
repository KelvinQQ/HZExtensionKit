//
//  NSArray+Extension.m
//  HZExtensionKit
//
//  Created by History on 14-10-4.
//  Copyright (c) 2014年 History. All rights reserved.
//

#import "NSArray+Extension.h"

@implementation NSArray (Extension)
- (NSArray *)moveObjectAtIndex:(NSInteger)index toIndex:(NSInteger)toIndex
{
    if (toIndex >= self.count - 1 || index >= self.count - 1) {
        return self;
    }
    id originObj = self[index];
    NSMutableArray *mutableArray = [self mutableCopy];
    [mutableArray removeObjectAtIndex:index];
    [mutableArray insertObject:originObj atIndex:toIndex];
    return [NSArray arrayWithArray:mutableArray];
}
@end

@implementation NSMutableArray (Extension)

- (void)moveObjectAtIndex:(NSInteger)index toIndex:(NSInteger)toIndex
{
    if (toIndex >= self.count - 1 || index >= self.count - 1) {
        return;
    }
    
    id originObj = self[index];
    [self removeObjectAtIndex:index];
    [self insertObject:originObj atIndex:toIndex];
}

- (BOOL)addObjectSafely:(id)anObject
{
    if (anObject) {
        [self addObject:anObject];
        return YES;
    }
    else {
        return NO;
    }
}
@end