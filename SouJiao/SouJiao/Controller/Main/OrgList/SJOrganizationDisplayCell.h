//
//  SJOrganizationDisplayCell.h
//  SouJiao
//
//  Created by Ares on 2017/6/18.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SJOrganizationDisplayCell : UITableViewCell

@property(nonatomic, strong) UIImage* image;
@property(nonatomic, strong) NSString* title;
@property(nonatomic, strong) NSString* desc;
@property(nonatomic, assign) int rate;

@end
