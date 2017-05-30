//
//  SJRegisterInputView.m
//  SouJiao
//
//  Created by Ares on 2017/5/30.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJRegisterInputView.h"

@interface SJRegisterInputView ()

@property(nonatomic, strong) IBOutlet UIView* view;
@property(nonatomic, strong) IBOutlet UILabel* titleLabel;
@property(nonatomic, strong) IBOutlet UITextField* inputTextField;
@property(nonatomic, strong) IBOutlet UIImageView* imageView;

@end

@implementation SJRegisterInputView

-(void) awakeFromNib
{
    [super awakeFromNib];
    
    [[NSBundle mainBundle] loadNibNamed:@"SJRegisterInputView" owner:self options:nil];
    [self addSubview:_view];
    [_view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
}

@end
