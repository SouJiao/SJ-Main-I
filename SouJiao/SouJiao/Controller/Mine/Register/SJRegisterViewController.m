//
//  SJRegisterViewController.m
//  SouJiao
//
//  Created by Ares on 2017/4/23.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJRegisterViewController.h"
#import "SJRegisterInputView.h"
#import "SJRegisterValidateView.h"

@interface SJRegisterViewController ()

@property(nonatomic, strong) IBOutlet SJRegisterInputView* accountInputView;
@property(nonatomic, strong) IBOutlet SJRegisterInputView* passwordInputView1;
@property(nonatomic, strong) IBOutlet SJRegisterInputView* passwordInputView2;
@property(nonatomic, strong) IBOutlet SJRegisterInputView* mobileInputView;
@property(nonatomic, strong) IBOutlet SJRegisterValidateView* validateCodeInputView;

@property(nonatomic, strong) IBOutlet UIButton* registerButton;

@end

@implementation SJRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    self.accountInputView.title = @"用户名：";
    self.passwordInputView1.title = @"密码：";
    self.passwordInputView1.secureInput = YES;
    self.passwordInputView2.title = @"确认密码：";
    self.passwordInputView2.secureInput = YES;
    self.mobileInputView.title = @"手机号码：";
    self.validateCodeInputView.title = @"验证码：";
    
    self.navigationItem.title = @"用户注册";
    
    self.registerButton.layer.cornerRadius = DEFAULT_BUTTON_CORNER_RADIUS;
    self.registerButton.layer.masksToBounds = YES;
}

-(IBAction) onRegisterButtonClicked:(id)sender
{

}


@end
