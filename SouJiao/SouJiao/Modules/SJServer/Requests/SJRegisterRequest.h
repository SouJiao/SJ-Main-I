//
//  SJRegisterRequest.h
//  SouJiao
//
//  Created by Ares on 2017/7/2.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJRequest.h"

@interface SJRegisterRequest : SJRequest

+(instancetype) requstWithPhoneNumber:(NSString*)phoneNum password:(NSString*)pwd verifyCode:(NSString*)code;

@end
