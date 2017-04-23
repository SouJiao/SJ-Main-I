//
//  SJLoginCenter.h
//  SouJiao
//
//  Created by Ares on 2017/4/23.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SJUser;

@interface SJLoginCenter : NSObject

+(instancetype) defaultCenter;

-(SJUser*) getLoginUser;

@end
