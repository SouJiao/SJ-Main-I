//
//  UIDevice+Common.m
//  SouJiao
//
//  Created by Ares on 2017/5/14.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "UIDevice+Common.h"

@implementation UIDevice (Common)

+(BOOL) isiPad
{
    return [[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad;
}

+(BOOL) isiPhone
{
    return [[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone;
}

@end
