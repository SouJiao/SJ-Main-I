//
//  SJLoginViewController.m
//  SouJiao
//
//  Created by Ares on 2017/4/23.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJLoginViewController.h"
#import "SJRegisterViewController.h"
#import "SJRegisterInputView.h"
#import "SJValidationCodeInputView.h"

@interface SJLoginViewController ()

@property(nonatomic, strong) IBOutlet SJRegisterInputView* accountInputView;
@property(nonatomic, strong) IBOutlet SJRegisterInputView* passwordInputView;
@property(nonatomic, strong) IBOutlet SJValidationCodeInputView* validationView;
@property(nonatomic, strong) IBOutlet UIButton* button;

@end

@implementation SJLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.accountInputView.title = @"手机号码：";
    self.passwordInputView.title = @"密码：";
    self.validationView.title = @"验证码：";
    
    
    self.button.layer.cornerRadius = DEFAULT_BUTTON_CORNER_RADIUS;
    self.button.layer.masksToBounds = YES;
    
}

-(IBAction) onLoginButtonClicked:(id)sender
{
    if ([self.validationView isValidation]) {
        [self.navigationController popToRootViewControllerAnimated:YES];
    }
    else
    {
        
    }
}

-(IBAction) onRegisterButtonClicked:(id)sender
{
    SJRegisterViewController* registViewController = [[SJRegisterViewController alloc] init];
    [self.navigationController pushViewController:registViewController animated:YES];
}

-(IBAction) onFogetPasswordButtonClicked:(id)sender
{
    
}

@end
