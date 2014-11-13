//
//  NSArray+Extension.h
//  HZExtensionKit
//
//  Created by History on 14-10-4.
//  Copyright (c) 2014年 History. All rights reserved.
//

@import Foundation;

@interface NSArray (Extension)
- (NSArray *)moveObjectAtIndex:(NSInteger)index toIndex:(NSInteger)toIndex;
@end

@interface NSMutableArray (Extension)
- (void)moveObjectAtIndex:(NSInteger)index toIndex:(NSInteger)toIndex;
- (BOOL)addObjectSafely:(id)anObject;
@end