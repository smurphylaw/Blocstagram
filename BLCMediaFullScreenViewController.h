//
//  BLCMediaFullScreenViewController.h
//  Blocstagram
//
//  Created by Murphy on 9/20/14.
//  Copyright (c) 2014 Murphy. All rights reserved.
//

#import "BLCMedia.h"

@class BLCMedia;

@interface BLCMediaFullScreenViewController : UIViewController

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIImageView *imageView;

- (instancetype) initWithMedia:(BLCMedia *)media;

- (void) centerScrollView;

@end
