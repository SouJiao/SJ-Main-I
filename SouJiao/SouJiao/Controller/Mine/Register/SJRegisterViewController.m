//
//  SJRegisterViewController.m
//  SouJiao
//
//  Created by Ares on 2017/4/23.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJRegisterViewController.h"
#import "SJRegisterTableViewCell.h"

@interface SJRegisterViewController () <UITableViewDelegate, UITableViewDataSource>

@property(nonatomic, strong) IBOutlet UITableView* tableView;

@end

@implementation SJRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.tableView registerNib:[UINib nibWithNibName:@"SJRegisterTableViewCell" bundle:nil] forCellReuseIdentifier:@"xxx"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SJRegisterTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"xxx" forIndexPath:indexPath];
    cell.nameLabel.text = @"name";
    return cell;
}

@end
