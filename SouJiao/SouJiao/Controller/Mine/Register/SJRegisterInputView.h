//
//  SJRegisterInputView.h
//  SouJiao
//
//  Created by Ares on 2017/5/30.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJBaseView.h"

@interface SJRegisterInputView : UIView

@property(nonatomic, strong) NSString* title;
@property(nonatomic, strong) NSString* inputValue;

@property(nonatomic, assign) BOOL secureInput;
@end
