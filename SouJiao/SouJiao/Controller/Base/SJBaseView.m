//
//  SJBaseView.m
//  SouJiao
//
//  Created by Ares on 2017/5/14.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJBaseView.h"

@implementation SJBaseView

-(instancetype) init
{
    NSString* name = NSStringFromClass([self class]);
    if (iPad) {
        NSString* padXibName = [NSString stringWithFormat:@"%@_iPad", NSStringFromClass([self class])];
        NSString* path = [[NSBundle mainBundle] pathForResource:padXibName ofType:@"xib"];
        if (path) {
            name = padXibName;
        }
    }
    NSArray* objs = [[NSBundle mainBundle] loadNibNamed:name owner:self options:nil];
    if (objs.count) {
        UIView* view = [objs objectAtIndex:0];
        self = [super initWithFrame:view.bounds];
        [self addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self);
        }];
    }
    else
    {
        self = [super init];
    }
    
    return self;
}

@end
