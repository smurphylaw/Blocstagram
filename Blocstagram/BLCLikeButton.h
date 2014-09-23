//
//  BLCLikeButton.h
//  Blocstagram
//
//  Created by Murphy on 9/21/14.
//  Copyright (c) 2014 Murphy. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, BLCLikeState) {
    BLCLikeStateNotLiked             = 0,
    BLCLikeStateLiking               = 1,
    BLCLikeStateLiked                = 2,
    BLCLikeStateUnliking             = 3
};

@interface BLCLikeButton : UIButton

/**
 The current state of the like button. Setting to BLCLikeButtonNotLiked or BLCLikeButtonLiked will display an empty heart or a heart, respectively. Setting to BLCLikeButtonLiking or BLCLikeButtonUnliking will display an activity indicator and disable button taps until the button is set to BLCLikeButtonNotLiked or BLCLikeButtonLiked.
 */
@property (nonatomic, assign) BLCLikeState likeButtonState;

@end
