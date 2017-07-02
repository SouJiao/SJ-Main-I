//
//  UIAlertController+Custom.h
//  SouJiao
//
//  Created by Ares on 2017/7/2.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (Custom)

+(void) showWithTitle:(NSString*)title message:(NSString*)message cancelTitle:(NSString*)cancelTitle cancelAction:(void(^)())cancelAction okTitle:(NSString*)okTitle okAction:(void(^)())okAction;

+(void) showWithTitle:(NSString *)title message:(NSString *)message cancelTitle:(NSString *)cancelTitle cancelAction:(void (^)())cancelAction;

+(void) showWithMessage:(NSString*)message;

@end
