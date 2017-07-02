//
//  SJUserProfiles.h
//  SouJiao
//
//  Created by Ares on 2017/4/23.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface SJUserProfiles : NSObject

@property(nonatomic, strong) NSString* token;

@property(nonatomic, strong) NSString* name;
@property(nonatomic, strong) NSArray* gender;
@property(nonatomic, strong) CLLocation* location;
@property(nonatomic, strong) NSDate* registerTime;

@end
