//
//  SJRootViewController.h
//  SouJiao
//
//  Created by Ares on 2017/4/23.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJBaseViewController.h"
#import "SJMainViewController.h"
#import "SJMineViewController.h"

@interface SJRootViewController : UITabBarController
/*
 * 首页
 */
@property(nonatomic, strong) SJMainViewController* mainViewController;
/*
 * 我的
 */
@property(nonatomic, strong) SJMineViewController* mineViewController;

@end
