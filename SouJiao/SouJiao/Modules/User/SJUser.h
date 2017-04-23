//
//  SJUser.h
//  SouJiao
//
//  Created by Ares on 2017/4/23.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SJProfiles.h"

@interface SJUser : NSObject

@property(nonatomic, readonly) SJProfiles* profiles;

@property(nonatomic, readonly) NSString* name;

@end
