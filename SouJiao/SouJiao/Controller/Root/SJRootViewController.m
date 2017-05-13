//
//  SJRootViewController.m
//  SouJiao
//
//  Created by Ares on 2017/4/23.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJRootViewController.h"


@interface SJRootViewController ()


@end

@implementation SJRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.mineViewController = [[SJMineViewController alloc] init];
    self.mineViewController.tabBarItem.title = @"Mine";
    
    self.mainViewController = [[SJMainViewController alloc] init];
    self.mainViewController.tabBarItem.title = @"Main";
    
    self.viewControllers = @[_mainViewController, _mineViewController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

-(void) viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

-(void) doInitialization
{
    
}

@end
