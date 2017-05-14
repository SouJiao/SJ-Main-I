//
//  SJSearchManager.h
//  SouJiao
//
//  Created by Ares on 2017/5/14.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

typedef void (^SJSearchCompletion)(NSError* error, id result);

@interface SJSearchManager : NSObject

+(instancetype) defaultManager;

-(void) serarchOrganizationsByLocation:(CLLocation*)loc withCompletion:(SJSearchCompletion)completion;

-(void) serarchOrganizationsByScoreWithCompletion:(SJSearchCompletion)completion;

-(void) serarchOrganizationsByPriceWithCompletion:(SJSearchCompletion)completion;

@end
