//
//  SJLoginViewController.m
//  SouJiao
//
//  Created by Ares on 2017/4/23.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJLoginViewController.h"
#import "SJRegisterViewController.h"

@interface SJLoginViewController ()

@property(nonatomic, strong) IBOutlet UITextField* accountTextField;
@property(nonatomic, strong) IBOutlet UITextField* passwordTextField;
@property(nonatomic, strong) IBOutlet UIButton* button;

@end

@implementation SJLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.button.layer.cornerRadius = DEFAULT_BUTTON_CORNER_RADIUS;
    self.button.layer.masksToBounds = YES;
    
}

-(IBAction) onLoginButtonClicked:(id)sender
{
    [self.navigationController popToRootViewControllerAnimated:YES];
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
