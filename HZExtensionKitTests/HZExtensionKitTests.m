//
//  HZExtensionKitTests.m
//  HZExtensionKitTests
//
//  Created by History on 14-7-28.
//  Copyright (c) 2014年 History. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "HZExtensionKit.h"
#import "NSArray+Extension.h"

@interface HZExtensionKitTests : XCTestCase

@end

@implementation HZExtensionKitTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testIntervalDateComponentsWithDate
{
    NSDate *date = [[NSDate date] dateByAddingDays:1];
    NSDateComponents *components = [[NSDate date] intervalDateComponentsWithDate:date];
    NSInteger day = components.day;
    XCTAssertEqual(day, -1, @"Is Not True");
}

- (void)testLog
{
    HZLog(@"Hello World");
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = ([paths count] > 0) ? [paths objectAtIndex:0] : nil;

    
    HZLog(@"%@", documentsDirectory);
    
    CGPoint pt = CGPointMake(111, 222);
    HZLogCGPoint(pt);
    
    NSInteger i = 4;
    HZStringFromInt(i);
}

- (void)testURLEncode
{
    NSString *testString = @" `~!@#$%^&*()_+-={}[]|\\:;\"'<,>.?/AZaz你好";
    HZLog(@"%@", testString);
    NSString *encodeString = [testString stringByUTF8Encode];
    HZLog(@"%@", encodeString);
    NSString *decodeString = [encodeString stringByUTF8Decode];
    HZLog(@"%@", decodeString);
}

- (void)testArray
{
    NSArray *array = @[@"1", @"2", @"3"];
    array = [array moveObjectAtIndex:2 toIndex:0];
    
//    id originObj = array[2];
//    NSMutableArray *mutableArray = [array mutableCopy];
//    [mutableArray removeObjectAtIndex:2];
//    [mutableArray insertObject:originObj atIndex:0];
    
    HZLog(@"%@", array);
}

@end
