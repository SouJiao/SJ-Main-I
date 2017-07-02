//
//  SJLoginRequest.h
//  SouJiao
//
//  Created by Ares on 2017/7/2.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJRequest.h"

@interface SJLoginRequest : SJRequest

+(instancetype) requestWithPhoneNumber:(NSString*)phoneNum password:(NSString*)pwd;

@end
