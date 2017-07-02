//
//  SJUserCenter.m
//  SouJiao
//
//  Created by Ares on 2017/7/2.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJUserCenter.h"

@implementation SJUserCenter

+(instancetype) defaultCenter
{
    static SJUserCenter* s_defaultCenter = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        s_defaultCenter = [[SJUserCenter alloc] init];
    });
    
    return s_defaultCenter;
}

@end
