//
//  SJOrganizationDisplayCell.m
//  SouJiao
//
//  Created by Ares on 2017/6/18.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJOrganizationDisplayCell.h"

@interface SJOrganizationDisplayCell ()

@property(nonatomic, strong) IBOutlet UIImageView* rateImageView;
@property(nonatomic, strong) IBOutlet UIImageView* mainImageView;
@property(nonatomic, strong) IBOutlet UILabel* titleLabel;
@property(nonatomic, strong) IBOutlet UILabel* descLabel;


@end

@implementation SJOrganizationDisplayCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(void) setTitle:(NSString *)title
{
    _title = title;
    self.titleLabel.text = title;
}

-(void) setImage:(UIImage *)image
{
    _image = image;
    [self.mainImageView setImage:image];
}

-(void) setDesc:(NSString *)desc
{
    _desc = desc;
    self.descLabel.text = desc;
}

-(void) setRate:(int)rate
{
    _rate = rate;
}


@end
