//
//  SJOrganzationCenterViewController.m
//  SouJiao
//
//  Created by Ares on 2017/6/4.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJOrganzationCenterViewController.h"
#import "SJOrganzationRegStep1.h"

typedef NS_ENUM(NSInteger, SJOrganzationCenterItem)
{
    SJOrganzationCenterWaitingForReview,
    SJOrganzationCenterApplyOrganzation,
    
};

@interface SJOrganzationCenterViewController ()

@property(nonatomic, strong) NSArray* items;

@end

@implementation SJOrganzationCenterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.items = @[@(SJOrganzationCenterWaitingForReview),
                   @(SJOrganzationCenterApplyOrganzation)];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"xxx"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:@"xxx"];
    }
    
    SJOrganzationCenterItem item = [[self.items objectAtIndex:indexPath.row] intValue];
    if (item == SJOrganzationCenterWaitingForReview) {
        cell.textLabel.text = @"等待审核";
    }
    else if (item == SJOrganzationCenterApplyOrganzation)
    {
        cell.textLabel.text = @"机构申请";
    }
    
    
    return cell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    SJOrganzationCenterItem item = [[self.items objectAtIndex:indexPath.row] intValue];
    if (item == SJOrganzationCenterWaitingForReview) {
        
    }
    else if (item == SJOrganzationCenterApplyOrganzation)
    {
        SJOrganzationRegStep1* step1 = [[SJOrganzationRegStep1 alloc] init];
        [self.navigationController pushViewController:step1 animated:YES];
    }
}

@end
