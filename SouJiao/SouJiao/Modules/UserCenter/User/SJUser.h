//
//  SJUser.h
//  SouJiao
//
//  Created by Ares on 2017/4/23.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SJUserProfiles.h"

@class SJOrganization;

@interface SJUser : NSObject

@property(nonatomic, readonly) SJUserProfiles* profiles;
@property(nonatomic, readonly) NSArray<SJOrganization*>* organizations;


@end
