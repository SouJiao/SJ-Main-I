//
//  SJBaseItem.m
//  SouJiao
//
//  Created by Ares on 2017/5/21.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJBaseItem.h"

@implementation SJBaseItem

+(instancetype) itemWithTitle:(NSString*)title
{
    SJBaseItem* item = [[SJBaseItem alloc] init];
    item.title = title;
    
    return item;
}

+(instancetype) itemWithTitle:(NSString *)title image:(UIImage*)image
{
    SJBaseItem* item = [[SJBaseItem alloc] init];
    item.title = title;
    item.image = image;
    
    return item;
}

+(instancetype) itemWithTitle:(NSString *)title tag:(NSUInteger)tag
{
    SJBaseItem* item = [[SJBaseItem alloc] init];
    item.title = title;
    item.tag = tag;
    
    return item;
}

@end
