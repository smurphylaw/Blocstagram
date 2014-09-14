//
//  BLCDataSource.h
//  Blocstagram
//
//  Created by Murphy on 8/21/14.
//  Copyright (c) 2014 Murphy. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BLCMedia;

typedef void (^BLCNewItemCompletionBlock)(NSError *error);

@interface BLCDataSource : NSObject

@property (nonatomic, strong, readonly) NSMutableArray *mediaItems;

+(instancetype) sharedInstance;

- (void) deleteMediaItem:(BLCMedia *)item;

- (void) requestNewItemsWithCompletionHandler:(BLCNewItemCompletionBlock)completionHandler;
- (void) requestOldItemsWithCompletionHandler:(BLCNewItemCompletionBlock)completionHandler;

@end
