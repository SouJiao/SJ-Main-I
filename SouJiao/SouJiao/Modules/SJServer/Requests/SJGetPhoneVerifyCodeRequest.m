//
//  SJGetPhoneVerifyCodeRequest.m
//  SouJiao
//
//  Created by Ares on 2017/7/2.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJGetPhoneVerifyCodeRequest.h"

@implementation SJGetPhoneVerifyCodeRequest

+(instancetype) requestWithPhoneNumber:(NSString*)phone
{
    SJGetPhoneVerifyCodeRequest* request = [[SJGetPhoneVerifyCodeRequest alloc] init];
    
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    [dict setObject:phone forKey:@"cellphone"];
    [dict setObject:@"" forKey:@"verifyCode"];
    [request setParameters:dict];
    
    return request;
}

-(NSString*) url
{
    return @"http://119.23.41.167:8080/SouJiao/mobile/mobileEntry?action=GET_REG_CODE";
}

-(void) onRequestCompletedWithResult:(id)result
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
        return [NSError errorWithCode:-1 message:@"获取验证码失败，此号码已经注册！"];
    }
    else if (code == -2)
    {
        return [NSError errorWithCode:-2 message:@"获取验证码失败，请求内容为空，请联系系统管理员！"];
    }
    else if (code == -3)
    {
        return [NSError errorWithCode:-3 message:@"获取验证码失败，系统异常，请联系系统管理员！"];
    }
    else
    {
        NSString* message = [NSString stringWithFormat:@"获取验证码失败，未知错误(%d)", code];
        return [NSError errorWithCode:code message:message];
    }
}

@end
