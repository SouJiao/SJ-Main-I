//
//  NSDictionary+JSON.h
//  SouJiao
//
//  Created by Ares on 2017/7/2.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (JSON)

+(instancetype) dictionaryWithJSONData:(NSData*)data;

-(NSString*) jsonString;

@end
