//
//  BLCCropImageViewController.h
//  Blocstagram
//
//  Created by Murphy on 9/26/14.
//  Copyright (c) 2014 Murphy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BLCMediaFullScreenViewController.h"

@class BLCCropImageViewController;

@protocol BLCCropImageViewControllerDelegate <NSObject>

- (void) cropControllerFinishedWithImage:(UIImage *)croppedImage;

@end

@interface BLCCropImageViewController : BLCMediaFullScreenViewController

@property (nonatomic, weak) NSObject <BLCCropImageViewControllerDelegate> *delegate;

- (instancetype) initWithImage:(UIImage *)sourceImage;

@end
