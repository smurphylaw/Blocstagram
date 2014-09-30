//
//  BLCMediaTests.m
//  Blocstagram
//
//  Created by Murphy on 9/29/14.
//  Copyright (c) 2014 Murphy. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "BLCMedia.h"

@interface BLCMediaTests : XCTestCase

@end

@implementation BLCMediaTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThatInitializationWorks
{
    NSDictionary *sourceDictionary = @{@"id": @"8675309",
                                       @"image" : @"http://www.example.com/example.jpg",
                                       @"likes" : @"10" };
    
    BLCComment *testMedia = [[BLCMedia alloc] initWithDictionary:sourceDictionary];
    
    XCTAssertEqualObjects(testMedia.idNumber, sourceDictionary[@"id"], @"The ID number should be equal");
    XCTAssertEqualObjects(testMedia.image, sourceDictionary[@"image"], @"The user should be equal");
    XCTAssertEqualObjects(testMedia.likes, sourceDictionary[@"likes"], @"The likes should be equal");
}

@end
