//
//  SJRegisterValidateView.m
//  SouJiao
//
//  Created by Ares on 2017/6/4.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJRegisterValidateView.h"

@interface SJRegisterValidateView ()

@property(nonatomic, strong) IBOutlet UIView* view;
@property(nonatomic, strong) IBOutlet UILabel* titleLabel;
@property(nonatomic, strong) IBOutlet UITextField* inputTextField;
@property(nonatomic, strong) IBOutlet UIButton* validateButton;
@property(nonatomic, strong) IBOutlet UILabel* validateLabel;

@property(nonatomic, strong) NSTimer* timer;
@property(nonatomic, assign) NSInteger counter;
@property(nonatomic, assign) BOOL counterState;

@end

@implementation SJRegisterValidateView

-(void) awakeFromNib
{
    [super awakeFromNib];
    
    [self setTitle:nil];
    [self setInputValue:nil];
    
    [[NSBundle mainBundle] loadNibNamed:@"SJRegisterValidateView" owner:self options:nil];
    [self addSubview:_view];
    [_view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
    
    
    
    self.validateLabel.layer.cornerRadius = DEFAULT_BUTTON_CORNER_RADIUS;
    self.validateLabel.layer.masksToBounds = YES;
    _counterState = YES;
    [self setCounterState:NO];
}

-(IBAction) onButtonClicked:(id)sender
{
    [self startCounter];
}

-(void) setTitle:(NSString *)title
{
    _title = title;
    self.titleLabel.text = title;
}

-(void) setInputValue:(NSString *)inputValue
{
    _inputValue = inputValue;
    self.inputTextField.text = inputValue;
}

-(void) setPhoneNumber:(NSString *)phoneNumber
{
    _phoneNumber = phoneNumber;
    if (phoneNumber) {
        
    }
}

-(void) startCounter
{
    [self stopCounter];
    
    self.counter = 60;
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(onTimerTicked:) userInfo:nil repeats:YES];
}

-(void) stopCounter
{
    if (self.timer) {
        [self.timer invalidate];
        self.timer = nil;
    }
}

-(void) onTimerTicked:(id)sender
{
    _counter --;
    if (_counter < 0) {
        [self stopCounter];
        [self setCounterState:NO];
    }
    else
    {
        [self setCounterState:YES];
        NSString* title = [NSString stringWithFormat:@"%ld秒", _counter];
        [self.validateLabel setText:title];
    }
}

-(void) setCounterState:(BOOL)counterState
{
    if (_counterState != counterState) {
        _counterState = counterState;
        if (counterState) {
            self.validateLabel.layer.borderColor = [UIColor lightGrayColor].CGColor;
            [self.validateLabel setBackgroundColor:[UIColor lightGrayColor]];
            [self.validateLabel setTextColor:[UIColor whiteColor]];
            
            [self.validateButton setEnabled:NO];
        }
        else
        {
            self.validateLabel.layer.borderColor = [UIColor sjBlueColor].CGColor;
            self.validateLabel.layer.borderWidth = 1.0;
            [self.validateLabel setBackgroundColor:[UIColor clearColor]];
            [self.validateLabel setTextColor:[UIColor sjBlueColor]];
            [self.validateLabel setText:@"获取验证码"];
            
            [self.validateButton setEnabled:YES];
        }
    }
}

@end
