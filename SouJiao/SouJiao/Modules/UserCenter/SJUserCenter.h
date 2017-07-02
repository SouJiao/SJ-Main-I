//
//  SJUserCenter.h
//  SouJiao
//
//  Created by Ares on 2017/7/2.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SJUserCenter : NSObject

+(instancetype) defaultCenter;

-(void) registerUserWithPhoneNumber:(NSString*)phoneNum password:(NSString*)pwd verifyCode:(NSString*)code withCompletion:(id)completion;

-(void) loginWithPhoneNumber:(NSString*)phoneNum password:(NSString*)pwd withCompletion:(id)completion;

@end
