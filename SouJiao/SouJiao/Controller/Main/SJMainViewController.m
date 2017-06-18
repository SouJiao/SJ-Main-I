//
//  SJMainViewController.m
//  SouJiao
//
//  Created by Ares on 2017/4/23.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJMainViewController.h"
#import "SJOrganizationDisplayCell.h"

#define CELL_REUSE_ID @"SJOrganizationDisplayCell"

@interface SJMainViewController () <UITableViewDelegate, UITableViewDataSource>

@property(nonatomic, strong) IBOutlet UITableView* tableView;

@end

@implementation SJMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"SJOrganizationDisplayCell" bundle:nil] forCellReuseIdentifier:CELL_REUSE_ID];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SJOrganizationDisplayCell* cell = [tableView dequeueReusableCellWithIdentifier:CELL_REUSE_ID forIndexPath:indexPath];
    if (indexPath.row == 1) {
        cell.title = @"高斯高等教育";
    }
    else if (indexPath.row == 2)
    {
         cell.title = @"精英培训机构";
    }
    else if (indexPath.row == 3)
    {
        cell.title = @"英才学前教育";
    }
    return cell;
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}

@end
