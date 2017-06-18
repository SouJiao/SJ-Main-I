//
//  SJOrganization.h
//  SouJiao
//
//  Created by Ares on 2017/6/18.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SJUser;

@interface SJOrganization : NSObject

@property(nonatomic, weak) SJUser* owner;

@property(nonatomic, strong) NSString* name;
@property(nonatomic, strong) NSString* desc;
@property(nonatomic, strong) UIImage* logo;

@property(nonatomic, assign) int rate;



@end
