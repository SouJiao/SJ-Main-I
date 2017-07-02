//
//  SJOrganizationApplyReqeust.m
//  SouJiao
//
//  Created by Ares on 2017/7/2.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJOrganizationApplyReqeust.h"

@implementation SJOrganizationApplyReqeust

+(instancetype) requestWithPhoneNumber:(NSString*)phoneNum password:(NSString*)pwd
{
    SJOrganizationApplyReqeust* request = [[SJOrganizationApplyReqeust alloc] init];
    
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    [dict setObject:phoneNum forKey:@"CELLPHONE"];
    [dict setObject:phoneNum forKey:@"TELEPHONE"];
    [dict setObject:phoneNum forKey:@"ORG_NAME"];
    [dict setObject:phoneNum forKey:@"ADDRESS"];
    [dict setObject:phoneNum forKey:@"LEGAL_PERSON"];
    [dict setObject:phoneNum forKey:@"ID_CARD"];
    [dict setObject:pwd forKey:@"EMAIL"];
    [dict setObject:@"" forKey:@"VERIFY_CODE"];
    
    [request setParameters:dict];
    
    return request;
}

-(NSString*) url
{
    return @"http://119.23.41.167:8080/SouJiao/mobile/mobileEntry?action=ORG_REG";
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
        NSError* error = [NSError errorWithCode:-1000 message:@"登录失败，服务器数据异常！"];
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
        return [NSError errorWithCode:-1 message:@"登录失败，用户不存在！"];
    }
    else if (code == -2)
    {
        return [NSError errorWithCode:-2 message:@"登录失败，系统异常！"];
    }
    else
    {
        NSString* message = [NSString stringWithFormat:@"登录失败，未知错误(%d)", code];
        return [NSError errorWithCode:code message:message];
    }
}

@end
