//
//  SJBaseItem.h
//  SouJiao
//
//  Created by Ares on 2017/5/21.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SJBaseItem : NSObject

@property(nonatomic, strong) NSString* title;
@property(nonatomic, strong) UIImage* image;

@property(nonatomic, assign) NSUInteger tag;
@property(nonatomic, strong) id object;

+(instancetype) itemWithTitle:(NSString*)title;
+(instancetype) itemWithTitle:(NSString *)title image:(UIImage*)image;
+(instancetype) itemWithTitle:(NSString *)title tag:(NSUInteger)tag;

@end
