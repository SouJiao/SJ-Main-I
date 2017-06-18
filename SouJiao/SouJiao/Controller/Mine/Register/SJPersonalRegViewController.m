//
//  SJPersonalRegViewController.m
//  SouJiao
//
//  Created by Ares on 2017/5/29.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJPersonalRegViewController.h"
#import "SJRegisterInputView.h"

@interface SJPersonalRegViewController ()

@property(nonatomic, strong) IBOutlet SJRegisterInputView* inputView1;
@property(nonatomic, strong) IBOutlet SJRegisterInputView* inputView2;
@property(nonatomic, strong) IBOutlet SJRegisterInputView* inputView3;
@property(nonatomic, strong) IBOutlet SJRegisterInputView* inputView4;

@end

@implementation SJPersonalRegViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.inputView1.title = @"手机号码：";
    self.inputView2.title = @"密码：";
    self.inputView3.title = @"确认密码：";
    self.inputView4.title = @"手机验证码";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
