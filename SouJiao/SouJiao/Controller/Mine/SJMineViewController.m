//
//  SJMineViewController.m
//  SouJiao
//
//  Created by Ares on 2017/4/23.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJMineViewController.h"
#import "SJUserProfileView.h"

@interface SJMineViewController () <UITableViewDelegate, UITableViewDataSource>

@property(nonatomic, strong) IBOutlet UITableView* tableView;
@property(nonatomic, strong) UIView* userProfileView;
@property(nonatomic, strong) NSArray* viewItems;

@end

@implementation SJMineViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.viewItems = @[@(SJMineViewControllerScore),
                       @(SJMineViewControllerSettings),
                       @(SJMineViewControllerMessage),
                       @(SJMineViewControllerFeedback),
                       @(SJMineViewControllerAbout)];
    
    self.userProfileView = [[SJUserProfileView alloc] init];
}

-(void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

-(void) viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.viewItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"xxx"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"xxx"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    SJMineViewControllerItems item = [[self.viewItems objectAtIndex:indexPath.row] intValue];
    switch (item) {
        case SJMineViewControllerScore:
        {
            cell.textLabel.text = @"评分";
            break;
        }
        case SJMineViewControllerSettings:
        {
            cell.textLabel.text = @"设置";
            break;
        }
        case SJMineViewControllerMessage:
        {
            cell.textLabel.text = @"消息";
            break;
        }
        case SJMineViewControllerFeedback:
        {
            cell.textLabel.text = @"用户反馈";
            break;
        }
        case SJMineViewControllerAbout:
        {
            cell.textLabel.text = @"关于";
            break;
        }
        default:
            break;
    }
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewAutomaticDimension;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return self.userProfileView.frame.size.height;
}

- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return self.userProfileView;
}

@end
