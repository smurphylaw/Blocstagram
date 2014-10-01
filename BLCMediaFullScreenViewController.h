//
//  BLCMediaFullScreenViewController.h
//  Blocstagram
//
//  Created by Murphy on 9/20/14.
//  Copyright (c) 2014 Murphy. All rights reserved.
//

#import "BLCMedia.h"

@class BLCMedia;

@protocol BLCMediaFullScreenDelegate <NSObject>

@optional
- (void)shareMediaItem:(BLCMedia *)item fromController:(UIViewController *)controller;

@end

@interface BLCMediaFullScreenViewController : UIViewController

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, weak) id <BLCMediaFullScreenDelegate> delegate;

@property (nonatomic, strong) BLCMedia *media;

- (instancetype) initWithMedia:(BLCMedia *)media;

- (void) centerScrollView;

- (void) recalculateZoomScale;

@end
