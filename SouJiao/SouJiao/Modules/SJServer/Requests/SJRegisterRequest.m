//
//  SJRegisterRequest.m
//  SouJiao
//
//  Created by Ares on 2017/7/2.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJRegisterRequest.h"

@implementation SJRegisterRequest

+(SJRegisterRequest*) requstWithPhoneNumber:(NSString*)phoneNum password:(NSString*)pwd verifyCode:(NSString*)code
{
    SJRegisterRequest* request = [[SJRegisterRequest alloc] init];
    
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    [dict setObject:phoneNum forKey:@"cellphone"];
    [dict setObject:pwd forKey:@"password"];
    [dict setObject:code forKey:@"regCode"];
    [dict setObject:@"" forKey:@"verifyCode"];
    
    [request setParameters:dict];
    
    return request;
}

-(NSString*) url
{
    return @"http://119.23.41.167:8080/SouJiao/mobile/mobileEntry?action=REG";
}

-(void) onRequestCompletedWithResult:(NSData*)result
{
    NSDictionary* dict = [NSDictionary dictionaryWithJSONData:result];
    if (dict.count) {
        int code = [[dict objectForKey:@"code"] intValue];
        NSError* error = [self errorForCode:code];
        if (error) {
            [self onRequestCompletedWithError:error];
        }
        else
        {
            [super onRequestCompletedWithResult:result];
        }
    }
    else
    {
        NSError* error = [NSError errorWithCode:-1000 message:@"注册失败，服务器数据异常！"];
        [self onRequestCompletedWithError:error];
    }
}

-(NSError*) errorForCode:(int)code
{
    if (code == 1) {
        return nil;
    }
    else if (code == -1)
    {
        return [NSError errorWithCode:-1 message:@"注册失败，注册码不正确！"];
    }
    else if (code == -2)
    {
        return [NSError errorWithCode:-2 message:@"注册失败，没找到此号码对应的注册码！"];
    }
    else if (code == -3)
    {
        return [NSError errorWithCode:-3 message:@"注册失败，系统异常！"];
    }
    else
    {
        NSString* message = [NSString stringWithFormat:@"注册失败，未知错误(%d)", code];
        return [NSError errorWithCode:code message:message];
    }
}

@end
