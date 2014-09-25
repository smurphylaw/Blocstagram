//
//  BLCComposeCommentView.h
//  Blocstagram
//
//  Created by Murphy on 9/24/14.
//  Copyright (c) 2014 Murphy. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BLCComposeCommentView;

@protocol BLCComposeCommentViewDelegate <NSObject>

- (void) commentViewDidPressCommentButton:(BLCComposeCommentView *)sender;
- (void) commentView:(BLCComposeCommentView *)sender textDidChange:(NSString *)text;
- (void) commentViewWillStartEditing:(BLCComposeCommentView *)sender;

@end

@interface BLCComposeCommentView : UIView

@property (nonatomic, weak) NSObject <BLCComposeCommentViewDelegate> *delegate;

@property (nonatomic, assign) BOOL isWritingComment;

@property (nonatomic, strong) NSString *text;

- (void) stopComposingComment;

@end
