//
//  SJRegisterInputView.h
//  SouJiao
//
//  Created by Ares on 2017/5/30.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJBaseView.h"

@class SJRegisterInputView;

@protocol SJRegisterInputViewDelegate <NSObject>

@optional
-(void) inputView:(SJRegisterInputView*)view didInputValueChanged:(NSString*)inputValue;

@end

@interface SJRegisterInputView : UIView

@property(nonatomic, weak) id<SJRegisterInputViewDelegate> delegate;

@property(nonatomic, strong) NSString* title;
@property(nonatomic, strong) NSString* inputValue;

@property(nonatomic, assign) BOOL secureInput;
@end
