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
    AFHTTPRequestOperationManager* manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"" parameters:nil success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
        NSLog(@"");
    } failure:^(AFHTTPRequestOperation * _Nullable operation, NSError * _Nonnull error) {
        
    }];
    
    return nil;
}

@end
