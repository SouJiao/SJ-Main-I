//
//  UIColor+CustomColor.m
//  SouJiao
//
//  Created by Ares on 2017/5/30.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "UIColor+CustomColor.h"

@implementation UIColor (CustomColor)

+(UIColor*) colorWithR:(CGFloat)r G:(CGFloat)g B:(CGFloat)b A:(CGFloat)a
{
    return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a];
}

+(UIColor*) sjBlueColor
{
    return [UIColor colorWithR:74.0 G:162.0 B:255.0 A:1.0];
}

@end
