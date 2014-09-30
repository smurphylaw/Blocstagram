//
//  BLCComposeCommentViewTests.m
//  Blocstagram
//
//  Created by Murphy on 9/29/14.
//  Copyright (c) 2014 Murphy. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "BLCComposeCommentView.h"

@interface BLCComposeCommentViewTests : XCTestCase

@end

@implementation BLCComposeCommentViewTests

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
    BLCComposeCommentView *composeComment = [[BLCComposeCommentView alloc] init];
    if (composeComment = nil) {
        XCTAssertTrue(composeComment.isWritingComment == NO, @"The is an error in comment section");
    } else {
    XCTAssertTrue(composeComment.isWritingComment == YES, @"The is an error in comment section");
    }
}


@end
