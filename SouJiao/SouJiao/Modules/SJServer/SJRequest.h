//
//  SJRequest.h
//  SouJiao
//
//  Created by Ares on 2017/7/2.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^SJRequestCompletionBlock)(id result, NSError* error);

@interface SJRequest : NSObject

@property(nonatomic, strong) NSString* url;
@property(nonatomic, strong) id parameters;

-(void) requestWithCompletion:(SJRequestCompletionBlock)completion;

-(void) onRequestCompletedWithResult:(NSData*)result;
-(void) onRequestCompletedWithError:(NSError*)error;

-(void) cancel;

@end
