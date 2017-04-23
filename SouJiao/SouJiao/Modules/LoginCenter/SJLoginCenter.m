//
//  SJLoginCenter.m
//  SouJiao
//
//  Created by Ares on 2017/4/23.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJLoginCenter.h"

@implementation SJLoginCenter

+(instancetype) defaultCenter
{
    static SJLoginCenter* s_loginCenter = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        s_loginCenter = [[SJLoginCenter alloc] init];
    });
    
    return s_loginCenter;
}

-(SJUser*) getLoginUser
{
    return nil;
}

@end
