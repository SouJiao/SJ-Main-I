//
//  UIAlertController+Custom.m
//  SouJiao
//
//  Created by Ares on 2017/7/2.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "UIAlertController+Custom.h"

@implementation UIAlertController (Custom)

+(void) showWithTitle:(NSString*)title message:(NSString*)message cancelTitle:(NSString*)cancelTitle cancelAction:(void(^)())cancelAction okTitle:(NSString*)okTitle okAction:(void(^)())okAction
{
    UIAlertController* alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    if (cancelTitle) {
        UIAlertAction* action = [UIAlertAction actionWithTitle:cancelTitle style:UIAlertActionStyleCancel handler:cancelAction];
        [alertController addAction:action];
    }

    if (okTitle) {
        UIAlertAction* action = [UIAlertAction actionWithTitle:okTitle style:UIAlertActionStyleDefault handler:okAction];
        [alertController addAction:action];
    }

    
    UIViewController* vc = [UIAlertController topViewController];
    [vc presentViewController:alertController animated:YES completion:nil];
}

+(void) showWithTitle:(NSString *)title message:(NSString *)message cancelTitle:(NSString *)cancelTitle cancelAction:(void (^)())cancelAction
{
    [UIAlertController showWithTitle:title message:message cancelTitle:cancelTitle cancelAction:cancelAction okTitle:nil okAction:nil];
}

+(void) showWithMessage:(NSString*)message
{
    [UIAlertController showWithTitle:nil message:message cancelTitle:nil cancelAction:nil okTitle:nil okAction:nil];
}

+(UIViewController*) topViewController
{
    UIViewController* viewController = [UIApplication sharedApplication].keyWindow.rootViewController;
    while (1) {
        if ([viewController isKindOfClass:[UIAlertController class]]) {
            break;
        }
        
        if (viewController.presentedViewController) {
            viewController = viewController.presentedViewController;
        }
        else if ([viewController isKindOfClass:[UITabBarController class]]) {
            viewController = ((UITabBarController*)viewController).selectedViewController;
        }
        else
        {
            break;
        }
    }
    
    return viewController;
}

@end
