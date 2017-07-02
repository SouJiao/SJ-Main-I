//
//  SJRequest.m
//  SouJiao
//
//  Created by Ares on 2017/7/2.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJRequest.h"

@interface SJRequest ()

@property(nonatomic, copy) SJRequestCompletionBlock completion;
@property(nonatomic, strong) AFHTTPRequestOperation* operation;

@end

@implementation SJRequest

-(void) requestWithCompletion:(SJRequestCompletionBlock)completion
{
    self.completion = completion;
    
    weakSelf(obj);
    AFHTTPRequestOperationManager* manager = [AFHTTPRequestOperationManager manager];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    manager.responseSerializer.acceptableContentTypes = nil;
    _operation = [manager POST:self.url parameters:self.parameters success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
        NSData* data = nil;
        if ([responseObject isKindOfClass:[NSString class]]) {
            data = [(NSString*)responseObject dataUsingEncoding:NSUTF8StringEncoding];
        }
        else if ([responseObject isKindOfClass:[NSData class]])
        {
            data = (NSData*)responseObject;
        }
        else if ([responseObject isKindOfClass:[NSDictionary class]])
        {
            data = [NSJSONSerialization dataWithJSONObject:responseObject options:kNilOptions error:nil];
        }
        [obj onRequestCompletedWithResult:data];
    } failure:^(AFHTTPRequestOperation * _Nullable operation, NSError * _Nonnull error) {
        [obj onRequestCompletedWithError:error];
    }];
}

-(void) onRequestCompletedWithResult:(NSData*)result
{
    _operation = nil;
    SafeBlock(_completion, result, nil);
}

-(void) onRequestCompletedWithError:(NSError*)error
{
    _operation = nil;
    SafeBlock(_completion, nil, error);
}

-(void) cancel
{
    if (_operation) {
        if ([_operation isCancelled]) {
            return;
        }
        [_operation cancel];
    }
}
@end
