//
//  BLCComposeCommentViewTests.m
//  Blocstagram
//
//  Created by Murphy on 9/29/14.
//  Copyright (c) 2014 Murphy. All rights reserved.
//

// #import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "BLCComposeCommentView.h"

@interface BLCComposeCommentViewTests : XCTestCase

@end

@implementation BLCComposeCommentViewTests

BLCComposeCommentView *composeComment;

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    composeComment = [[BLCComposeCommentView alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    composeComment = nil;
    [super tearDown];
}

- (void)testSetTextAlsoSetsIsWritingComment
{
    [composeComment setText:@""];
    XCTAssertTrue(composeComment.isWritingComment == NO, @"There is an error in comment section");
    // test to make sure isWritingComment is NO
    
    [composeComment setText:@"Text here"];
    XCTAssertTrue(composeComment.isWritingComment == YES, @"There is an error in comment section");
    // and here it should be YES
}



@end
