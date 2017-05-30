//
//  SJRegisterViewController.m
//  SouJiao
//
//  Created by Ares on 2017/4/23.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJRegisterViewController.h"
#import "SJPersonalRegViewController.h"
#import "SJOrganzationRegStep4.h"

@interface SJRegisterViewController ()

@property(nonatomic, strong) IBOutlet UIButton* button1;
@property(nonatomic, strong) IBOutlet UIButton* button2;

@end

@implementation SJRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    self.button1.layer.cornerRadius = 3;
    self.button1.layer.masksToBounds = YES;

    self.button2.layer.cornerRadius = 3;
    self.button2.layer.masksToBounds = YES;
}

-(IBAction) onPersonalButtonClicked:(id)sender
{
    SJPersonalRegViewController* personalRegVC = [[SJPersonalRegViewController alloc] init];
    [self.navigationController pushViewController:personalRegVC animated:YES];
}

-(IBAction) onOrganzationButtonClicked:(id)sender
{
//    SJOrganzationRegStep1* organizationRegVC = [[SJOrganzationRegStep1 alloc] init];
    SJOrganzationRegStep4* step4 = [[SJOrganzationRegStep4 alloc] init];
    [self.navigationController pushViewController:step4 animated:YES];
}

@end
