//
//  BLCMediaTableViewCellTests.m
//  Blocstagram
//
//  Created by Murphy on 9/29/14.
//  Copyright (c) 2014 Murphy. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "BLCMediaTableViewCell.h"
#import "BLCMedia.h"
#import "BLCComposeCommentView.h"

@interface BLCMediaTableViewCellTests : XCTestCase

@end

@implementation BLCMediaTableViewCellTests

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
    BLCMediaTableViewCell *height = [[BLCComposeCommentView alloc] init];
    BLCMedia *imageItems = [[BLCMedia alloc] init];
    CGFloat newImageSize = [BLCMediaTableViewCell heightForMediaItem:imageItems width:320];
    
    XCTAssertTrue(newImageSize == CGRectGetHeight(height.frame), @"The height is incorrect");
}

@end
