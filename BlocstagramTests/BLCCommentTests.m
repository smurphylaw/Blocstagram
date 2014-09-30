//
//  BLCCommentTests.m
//  Blocstagram
//
//  Created by Murphy on 9/29/14.
//  Copyright (c) 2014 Murphy. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "BLCComment.h"

@interface BLCCommentTests : XCTestCase

@end

@implementation BLCCommentTests

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
                                       @"text" : @"Sample Comment"};
    
    BLCComment *testComment = [[BLCComment alloc] initWithDictionary:sourceDictionary];
    
    XCTAssertEqualObjects(testComment.idNumber, sourceDictionary[@"id"], @"The ID number should be equal");
    XCTAssertEqualObjects(testComment.text, sourceDictionary[@"text"], @"The text should be equal");
}

@end
