//
//  NSDictionary+JSON.m
//  SouJiao
//
//  Created by Ares on 2017/7/2.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "NSDictionary+JSON.h"

@implementation NSDictionary (JSON)

-(NSString*) jsonString
{
    NSData* data = [NSJSONSerialization dataWithJSONObject:self options:kNilOptions error:nil];
    if (data) {
        return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    }
    
    return nil;
}

+(instancetype) dictionaryWithJSONData:(NSData*)data
{
    NSError* error = nil;
    id jsonObject = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
    if (error) {
        return [NSDictionary dictionary];
    }
    if ([jsonObject isKindOfClass:[NSDictionary class]]) {
        return (NSDictionary*)jsonObject;
    }
    else if ([jsonObject isKindOfClass:[NSArray class]])
    {
        return [NSDictionary dictionaryWithObjectsAndKeys:jsonObject, @"array", nil];
    }
    else
    {
        return [NSDictionary dictionary];
    }
}

@end
