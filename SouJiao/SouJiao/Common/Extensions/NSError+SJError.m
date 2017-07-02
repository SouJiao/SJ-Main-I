//
//  NSDictionary+SJError.m
//  SouJiao
//
//  Created by Ares on 2017/7/2.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "NSError+SJError.h"

NSString* const  SJErrorDomain = @"SJErrorDomain";

@implementation NSError (SJError)

+(instancetype) errorWithCode:(NSInteger)code message:(NSString*)message
{
    if (!message) {
        message = @"";
    }
    return [NSError errorWithDomain:SJErrorDomain code:code userInfo:@{NSLocalizedDescriptionKey:message}];
}

@end
