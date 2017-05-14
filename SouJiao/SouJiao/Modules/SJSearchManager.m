//
//  SJSearchManager.m
//  SouJiao
//
//  Created by Ares on 2017/5/14.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJSearchManager.h"

@implementation SJSearchManager

+(instancetype) defaultManager
{
    static SJSearchManager* s_defaultManager = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        s_defaultManager = [[SJSearchManager alloc] init];
    });
    
    return s_defaultManager;
}

-(void) serarchOrganizationsByLocation:(CLLocation*)loc withCompletion:(SJSearchCompletion)completion
{
    
}

-(void) serarchOrganizationsByScoreWithCompletion:(SJSearchCompletion)completion
{
    
}

-(void) serarchOrganizationsByPriceWithCompletion:(SJSearchCompletion)completion
{
    
}

@end
