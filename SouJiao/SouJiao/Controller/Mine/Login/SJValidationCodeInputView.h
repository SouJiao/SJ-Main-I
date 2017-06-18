//
//  SJValidationCodeInputView.h
//  SouJiao
//
//  Created by Ares on 2017/6/18.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SJValidationCodeInputView : UIView

@property(nonatomic, strong) NSString* title;
@property(nonatomic, strong) NSString* value;

-(BOOL) isValidation;

@end
