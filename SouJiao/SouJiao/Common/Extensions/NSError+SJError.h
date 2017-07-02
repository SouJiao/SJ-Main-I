//
//  NSDictionary+SJError.h
//  SouJiao
//
//  Created by Ares on 2017/7/2.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString* const  SJErrorDomain;

@interface NSError (SJError)

+(instancetype) errorWithCode:(NSInteger)code message:(NSString*)message;

@end
