//
//  UIImage+BLCImageUtilities.h
//  Blocstagram
//
//  Created by Murphy on 9/25/14.
//  Copyright (c) 2014 Murphy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (BLCImageUtilities)

- (UIImage *) imageWithFixedOrientation;
- (UIImage *) imageResizedToMatchAspectRatioOfSize:(CGSize)size;
- (UIImage *) imageCroppedToRect:(CGRect)cropRect;
- (UIImage *) imageByScalingToSize:(CGSize)size andCroppingWithRect:(CGRect)rect;

@end
