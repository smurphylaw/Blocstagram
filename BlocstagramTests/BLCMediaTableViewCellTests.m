//
//  BLCMediaTableViewCellTests.m
//  Blocstagram
//
//  Created by Murphy on 9/29/14.
//  Copyright (c) 2014 Murphy. All rights reserved.
//

// #import <Cocoa/Cocoa.h>
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

// You're testing heights here, I'd rename the method
- (void)testThatInitializationWorks
{
    // probably want to make the name more clear:
    BLCMediaTableViewCell *heightTestCell = [[BLCComposeCommentView alloc] init];
    BLCMedia *imageItems = [[BLCMedia alloc] init];

    // Since we have NSSize we would probably not want to name this ending in size, implies it has two floats
    CGFloat newImageHeight = [BLCMediaTableViewCell heightForMediaItem:imageItems width:320];
    
    // This would be one test of a given height calculated from a width, but you are just testing if it returns exactly the frame size for a width of 320.. they want you to put in a couple images with known aspect ratios, throw the method some specific widths and expect different heights calculated using the aspect ratio. You could use one image w/ multiple widths for example, I'd recommend using two or more.
    
    // so if you had a 320x320 image in imageItems..
    // and it's been set as item 0
    XCTAssertEqual([BLCMediaTableViewCell heightForMediaItem:imageItems[0] width:650], 650);
    XCTAssertEqual([BLCMediaTableViewCell heightForMediaItem:imageItems[0] width:200], 200);

    // then another aspect ratio image...
    
    
    //    XCTAssertTrue(newImageSize == CGRectGetHeight(height.frame), @"The height is incorrect");
    
}

@end
