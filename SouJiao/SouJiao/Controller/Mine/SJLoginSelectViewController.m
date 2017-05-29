//
//  SJLoginSelectViewController.m
//  SouJiao
//
//  Created by Ares on 2017/5/29.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJLoginSelectViewController.h"
#import "SJRegisterViewController.h"
#import "SJLoginViewController.h"
#import "DLNavigationTabBar.h"

@interface SJLoginSelectViewController () <UIPageViewControllerDelegate, UIPageViewControllerDataSource>

@property(nonatomic, strong) DLNavigationTabBar* tabBar;

@property(nonatomic, strong) SJLoginViewController* loginViewController;
@property(nonatomic, strong) SJRegisterViewController* regViewController;

@end

@implementation SJLoginSelectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = self;
    self.dataSource = self;
    
    weakSelf(obj);
    self.tabBar = [[DLNavigationTabBar alloc] initWithTitles:@[@"登录", @"注册"]];
    self.navigationItem.titleView = self.tabBar;
    self.tabBar.didClickAtIndex = ^(NSInteger buttonIndex) {
        weakReturn(obj);
        [obj navigationDidSelectedControllerIndex:buttonIndex];
    };
    
    self.loginViewController = [[SJLoginViewController alloc] init];
    self.regViewController = [[SJRegisterViewController alloc] init];
    
    [self setViewControllers:@[_loginViewController]
                   direction:UIPageViewControllerNavigationDirectionForward
                    animated:YES
                  completion:nil];
}

- (void)navigationDidSelectedControllerIndex:(NSInteger)index
{
    if (index == 0) {
        [self setViewControllers:@[self.loginViewController] direction:UIPageViewControllerNavigationDirectionReverse animated:YES completion:nil];
    }
    else
    {
        [self setViewControllers:@[self.regViewController] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
    }
}

#pragma mark - 

- (nullable UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    if ([viewController isEqual:_regViewController]) {
        return _loginViewController;
    }
    
    return nil;
}

- (nullable UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    if ([viewController isEqual:_loginViewController]) {
        return _regViewController;
    }
    
    return nil;
}

- (void)pageViewController:(UIPageViewController *)pageViewController didFinishAnimating:(BOOL)finished
   previousViewControllers:(NSArray *)previousViewControllers
       transitionCompleted:(BOOL)completed
{
    UIViewController *viewController = self.viewControllers[0];
    if ([viewController isEqual:_loginViewController]) {
        [self.tabBar scrollToIndex:0];
    }
    else
    {
        [self.tabBar scrollToIndex:1];
    }
}

@end
