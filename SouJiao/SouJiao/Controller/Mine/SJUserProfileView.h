//
//  SJUserProfileView.h
//  SouJiao
//
//  Created by Ares on 2017/5/14.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJBaseView.h"

@class SJUserProfileView;

@protocol SJUserProfileViewDelegate <NSObject>

-(void) userProfileViewDidClickedView:(SJUserProfileView*)view;

@end

@interface SJUserProfileView : SJBaseView

@property(nonatomic, weak) id<SJUserProfileViewDelegate> delegate;

@property(nonatomic, strong) UIImage* userFace;
@property(nonatomic, strong) NSString* userName;

@end
