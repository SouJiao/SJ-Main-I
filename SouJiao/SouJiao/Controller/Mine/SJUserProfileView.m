//
//  SJUserProfileView.m
//  SouJiao
//
//  Created by Ares on 2017/5/14.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJUserProfileView.h"

@interface SJUserProfileView ()

@property(nonatomic, strong) IBOutlet UIImageView* imageView;
@property(nonatomic, strong) IBOutlet UILabel* titleLabel;

@end

@implementation SJUserProfileView

-(instancetype) init
{
    self = [super init];
    if (self) {
        
    }
    
    return self;
}

-(IBAction) onButtonClicked:(id)sender
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(userProfileViewDidClickedView:)]) {
        [self.delegate userProfileViewDidClickedView:self];
    }
}

@end
