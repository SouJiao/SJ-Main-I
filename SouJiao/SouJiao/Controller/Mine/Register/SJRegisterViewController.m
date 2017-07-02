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

@interface SJRegisterViewController () <SJRegisterInputViewDelegate>

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

    self.mobileInputView.title = @"手机号码：";
    self.mobileInputView.delegate = self;
    self.passwordInputView1.title = @"密码：";
    self.passwordInputView1.secureInput = YES;
    self.passwordInputView2.title = @"确认密码：";
    self.passwordInputView2.secureInput = YES;
    self.validateCodeInputView.title = @"验证码：";
    
    self.navigationItem.title = @"用户注册";
    
    self.registerButton.layer.cornerRadius = DEFAULT_BUTTON_CORNER_RADIUS;
    self.registerButton.layer.masksToBounds = YES;
}

-(IBAction) onRegisterButtonClicked:(id)sender
{
    NSError* error;
    
    NSString* phoneNumber = self.mobileInputView.inputValue;
    error = [self verifyPhoneNumber:phoneNumber];
    if (error) {
        [UIAlertController showWithMessage:error.localizedDescription];
        return;
    }
    
    NSString* password = self.passwordInputView1.inputValue;
    NSString* confirmPassword = self.passwordInputView2.inputValue;
    error = [self verifyPassword:password andConfirmPassword:confirmPassword];
    if (error) {
        [UIAlertController showWithMessage:error.localizedDescription];
        return;
    }
    
    NSString* verifyCode = self.validateCodeInputView.inputValue;
    error = [self verifyValidateCode:verifyCode];
    if (error) {
        [UIAlertController showWithMessage:error.localizedDescription];
        return;
    }
    
}

-(NSError*) verifyPhoneNumber:(NSString*)phoneNumber
{
    NSError* error = nil;
    NSString* phoneReg = @"^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\\d{8}$";
    NSPredicate* predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", phoneReg];
    BOOL isValid = [predicate evaluateWithObject:phoneNumber];
    if (!isValid) {
        error = [NSError errorWithCode:-1 message:@"您输入的手机号码有误，请检查！"];
    }
    
    return error;
}

-(NSError*) verifyPassword:(NSString*)password andConfirmPassword:(NSString*)confirmPwd
{
    return nil;
}

-(NSError*) verifyValidateCode:(NSString*)code
{
    return nil;
}

-(void) inputView:(SJRegisterInputView*)view didInputValueChanged:(NSString*)inputValue
{
    self.validateCodeInputView.phoneNumber = inputValue;
}
@end
