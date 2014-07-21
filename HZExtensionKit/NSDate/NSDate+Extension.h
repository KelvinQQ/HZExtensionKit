//
//  NSDate+Extension.h
//  HZExtensionKit
//
//  Created by History on 14-4-27.
//  Copyright (c) 2014年 History. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Extension)
@property (nonatomic, assign, readonly) NSInteger year;
@property (nonatomic, assign, readonly) NSInteger month;
@property (nonatomic, assign, readonly) NSInteger day;
@property (nonatomic, assign, readonly) NSInteger hour;
@property (nonatomic, assign, readonly) NSInteger minute;
@property (nonatomic, assign, readonly) NSInteger second;
@property (nonatomic, assign, readonly) NSInteger weekday;
@property (nonatomic, assign, readonly) NSInteger firstDayOfWeekday;
@property (nonatomic, assign, readonly) NSInteger dayCount;
@property (nonatomic, assign, readonly) NSInteger weekOfMonth;

- (NSString *)stringWithFormat:(NSString *)format;
- (NSDate *)dateByAddingDays:(NSInteger)day;
- (NSDate *)dateByAddingMonths:(NSInteger)month;
- (NSDate *)dateByAddingYears:(NSInteger)year;
- (NSString *)chineseMonth;
- (NSString *)chineseDay;
- (NSString *)chineseDate;
- (BOOL)isSameDay:(NSDate *)date;
- (BOOL)isSameMonth:(NSDate *)date;
+ (NSDate *)dateWithString:(NSString *)string byFormat:(NSString *)format;
@end
