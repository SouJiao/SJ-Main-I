//
//  SJMineViewController.m
//  SouJiao
//
//  Created by Ares on 2017/4/23.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJMineViewController.h"
#import "SJUserProfileView.h"
#import "SJLoginViewController.h"

@interface SJMineViewController () <UITableViewDelegate, UITableViewDataSource, SJUserProfileViewDelegate>

@property(nonatomic, strong) IBOutlet UITableView* tableView;
@property(nonatomic, strong) SJUserProfileView* userProfileView;
@property(nonatomic, strong) NSArray* tableItems;

@end

@implementation SJMineViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tableItems = [self createTableViewItems];
    
    self.userProfileView = [[SJUserProfileView alloc] init];
    self.userProfileView.delegate = self;
}

-(void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

-(void) viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

-(NSArray*) createTableViewItems
{
    SJBaseItem* item1 = [SJBaseItem itemWithTitle:@"评分" tag:SJMineViewControllerScore];
    SJBaseItem* item2 = [SJBaseItem itemWithTitle:@"设置" tag:SJMineViewControllerSettings];
    SJBaseItem* item3 = [SJBaseItem itemWithTitle:@"消息" tag:SJMineViewControllerMessage];
    SJBaseItem* item4 = [SJBaseItem itemWithTitle:@"用户反馈" tag:SJMineViewControllerFeedback];
    SJBaseItem* item5 = [SJBaseItem itemWithTitle:@"关于" tag:SJMineViewControllerAbout];
    
    return @[item1, item2, item3, item4, item5];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tableItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"xxx"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"xxx"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    SJBaseItem* item = [self.tableItems objectAtIndex:indexPath.row];
    cell.textLabel.text = item.title;
    
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

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    SJBaseItem* item = [self.tableItems objectAtIndex:indexPath.row];
    switch (item.tag) {
        case SJMineViewControllerScore:
        {
            
            break;
        }
        case SJMineViewControllerSettings:
        {
            break;
        }
        case SJMineViewControllerMessage:
        {
            
            break;
        }
        case SJMineViewControllerFeedback:
        {
            
            break;
        }
        case SJMineViewControllerAbout:
        {
            
            break;
        }
        default:
            break;
    }
}

#pragma mark - SJUserProfileViewDelegate

-(void) userProfileViewDidClickedView:(SJUserProfileView*)view
{
    SJLoginViewController* loginViewController = [[SJLoginViewController alloc] init];
    [self.parentViewController.navigationController pushViewController:loginViewController animated:YES];
}

@end
