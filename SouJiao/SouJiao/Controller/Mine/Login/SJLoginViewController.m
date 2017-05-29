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
    
    self.button.layer.cornerRadius = 3;
    self.button.layer.masksToBounds = YES;
    
    UIBarButtonItem* item = [[UIBarButtonItem alloc] initWithTitle:@"注册" style:UIBarButtonItemStylePlain target:self action:@selector(onRegisterButtonClicked:)];
    [item setTintColor:[UIColor blackColor]];
    self.navigationItem.rightBarButtonItem = item;
    [self.navigationController.navigationBar setTintColor:[UIColor blackColor]];
    [self.navigationController.navigationBar setBackgroundColor:[UIColor whiteColor]];
}

-(IBAction) onLoginButtonClicked:(id)sender
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

-(void) onRegisterButtonClicked:(id)sender
{
    SJRegisterViewController* registViewController = [[SJRegisterViewController alloc] init];
    [self.navigationController pushViewController:registViewController animated:YES];
}

@end
