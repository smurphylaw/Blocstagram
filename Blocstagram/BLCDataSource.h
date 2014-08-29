//
//  BLCDataSource.h
//  Blocstagram
//
//  Created by Murphy on 8/21/14.
//  Copyright (c) 2014 Murphy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BLCDataSource : NSObject

@property (nonatomic, strong) NSMutableArray *mediaItems;

+(instancetype) sharedInstance;

@end
