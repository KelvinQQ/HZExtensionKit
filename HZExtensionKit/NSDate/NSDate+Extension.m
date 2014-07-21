//
//  NSDate+Extension.m
//  HZExtensionKit
//
//  Created by History on 14-4-27.
//  Copyright (c) 2014年 History. All rights reserved.
//

#import "NSDate+Extension.h"
#import "PublicDefines.h"

static const int kMonthDays[] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };

@implementation NSDate (Extension)
- (NSDateComponents *)dateComponents
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth |
                                    NSCalendarUnitDay | NSCalendarUnitHour |
                                    NSCalendarUnitMinute | NSCalendarUnitSecond |
                                    NSCalendarUnitWeekday | NSCalendarUnitWeekOfMonth
                                               fromDate:self];
    return components;
}
- (NSInteger)year
{
    return [self dateComponents].year;
}

- (NSInteger)month
{
    return [self dateComponents].month;
}

- (NSInteger)day
{
    return [self dateComponents].day;
}


- (NSInteger)hour
{
    return [self dateComponents].hour;
}


- (NSInteger)minute
{
    return [self dateComponents].minute;
}


- (NSInteger)second
{
    return [self dateComponents].second;
}


- (NSInteger)weekday
{
    return [self dateComponents].weekday;
}
- (NSInteger)weekOfMonth
{
    return [self dateComponents].weekOfMonth;
}
- (BOOL)leapYear
{
    BOOL rt = NO;
    if (self.year % 4 == 0) {
        if (self.year % 100 == 0) {
            rt = self.year % 400 == 0;
        }
        else {
            rt = YES;
        }
    }
    return rt;
}
- (NSInteger)dayCount
{
    BOOL isLeapYear = [self leapYear];
    int oneMore = isLeapYear && self.month == 2 ? 1 : 0;
    return kMonthDays[self.month - 1] + oneMore;
}

- (BOOL)isSameDay:(NSDate *)date
{
    BOOL rt = NO;
    if (self.year == date.year &&
        self.month == date.month &&
        self.day == date.day) {
        rt = YES;
    }
    return rt;
}

- (BOOL)isSameMonth:(NSDate *)date
{
    BOOL rt = NO;
    if (self.year == date.year &&
        self.month == date.month) {
        rt = YES;
    }
    return rt;
}


- (NSInteger)firstDayOfWeekday
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth |
                                    NSCalendarUnitDay | NSCalendarUnitHour |
                                    NSCalendarUnitMinute | NSCalendarUnitSecond |
                                    NSCalendarUnitWeekday
                                               fromDate:self];
    
    components.day = 1;
    NSDate *date = [calendar dateFromComponents:components];
    return date.weekday;
    
}

- (NSDate *)dateByAddingDays:(NSInteger)day
{
    NSCalendar *calendar = [[NSCalendar alloc]
                            initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents* components = [[NSDateComponents alloc] init];
    components.day = day;
    NSDate *date = [calendar dateByAddingComponents:components toDate:self options:0];
    return date;
}

- (NSDate *)dateByAddingMonths:(NSInteger)month
{
    NSCalendar *calendar = [[NSCalendar alloc]
                            initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents* components = [[NSDateComponents alloc] init];
    components.month = month;
    NSDate *date = [calendar dateByAddingComponents:components toDate:self options:0];
    return date;
}
- (NSDate *)dateByAddingYears:(NSInteger)year
{
    NSCalendar *calendar = [[NSCalendar alloc]
                            initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents* components = [[NSDateComponents alloc] init];
    components.year = year;
    NSDate *date = [calendar dateByAddingComponents:components toDate:self options:0];
    return date;
}

- (NSString *)stringWithFormat:(NSString *)format
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = format;
    NSString *string = [formatter stringFromDate:self];
    HZ_REHZEAR(format);
    return string;
}

+ (NSDate *)dateWithString:(NSString *)string byFormat:(NSString *)format
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = format;
    NSDate *date = [formatter dateFromString:string];
    return date;
}

- (NSString *)chineseCalendar
{
    NSArray *chineseMonths = @[@"正月", @"二月", @"三月", @"四月",
                               @"五月", @"六月", @"七月", @"八月",
                               @"九月", @"十月", @"冬月", @"腊月"];
    
    NSArray *chineseDays = @[@"初一", @"初二", @"初三", @"初四", @"初五",
                             @"初六", @"初七", @"初八", @"初九", @"初十",
                             @"十一", @"十二", @"十三", @"十四", @"十五",
                             @"十六", @"十七", @"十八", @"十九", @"二十",
                             @"廿一", @"廿二", @"廿三", @"廿四", @"廿五",
                             @"廿六", @"廿七", @"廿八", @"廿九", @"三十"];
    
    NSCalendar *localeCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSChineseCalendar];
    unsigned unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit |  NSDayCalendarUnit;
    NSDateComponents *localeComp = [localeCalendar components:unitFlags fromDate:self];
    
    NSString *chineseCal = [NSString stringWithFormat:@"%@|%@", chineseMonths[localeComp.month - 1],
                            chineseDays[localeComp.day - 1]];
    
    
    return chineseCal;
}
- (NSString *)chineseMonth
{
    NSString *chineseCalendar = [self chineseCalendar];
    return [[chineseCalendar componentsSeparatedByString:@"|"] firstObject];
}
- (NSString *)chineseDay
{
    NSString *chineseCalendar = [self chineseCalendar];
    return [[chineseCalendar componentsSeparatedByString:@"|"] lastObject];
}
- (NSString *)chineseDate
{
    NSString *chineseCalendar = [self chineseCalendar];
    NSArray *md = [chineseCalendar componentsSeparatedByString:@"|"];
    return [NSString stringWithFormat:@"%@%@", [md firstObject], [md lastObject]];
}
@end
