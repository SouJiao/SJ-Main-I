//
//  SJGetPhoneVerifyCodeRequest.h
//  SouJiao
//
//  Created by Ares on 2017/7/2.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJRequest.h"

@interface SJGetPhoneVerifyCodeRequest : SJRequest

+(instancetype) requestWithPhoneNumber:(NSString*)phone;

@end
