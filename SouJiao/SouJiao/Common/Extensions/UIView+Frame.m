//
//  UIView+Frame.m
//  SouJiao
//
//  Created by Ares on 2017/5/14.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)

-(void) setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    [self setFrame:frame];
}

-(CGFloat) x
{
    return self.frame.origin.x;
}

-(void) setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    [self setFrame:frame];
}

-(CGFloat) y
{
    return self.frame.origin.y;
}

-(void) setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    [self setFrame:frame];
}

-(CGFloat) width
{
    return self.frame.size.width;
}

-(void) setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    [self setFrame:frame];
}

-(CGFloat) height
{
    return self.frame.size.height;
}

-(void) setCx:(CGFloat)cx
{
    CGPoint center = self.center;
    center.x = cx;
    [self setCenter:center];
}

-(CGFloat) cx
{
    return self.center.x;
}

-(void) setCy:(CGFloat)cy
{
    CGPoint center = self.center;
    center.y = cy;
    [self setCenter:center];
}

-(CGFloat) cy
{
    return self.center.y;
}

@end
