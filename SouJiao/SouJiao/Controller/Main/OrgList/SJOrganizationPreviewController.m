//
//  SJOrganizationPreviewController.m
//  SouJiao
//
//  Created by Ares on 2017/6/18.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJOrganizationPreviewController.h"
#import "SJOrganization.h"

@interface SJOrganizationPreviewController ()

@property(nonatomic, strong) SJOrganization* organization;

@end

@implementation SJOrganizationPreviewController

-(instancetype) initWithOrganization:(SJOrganization*)organization
{
    self = [super init];
    if (self) {
        self.organization = organization;
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
