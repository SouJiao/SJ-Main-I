//
//  SJRegisterInputView.m
//  SouJiao
//
//  Created by Ares on 2017/5/30.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJRegisterInputView.h"

@interface SJRegisterInputView ()

@property(nonatomic, strong) IBOutlet UIView* view;
@property(nonatomic, strong) IBOutlet UILabel* titleLabel;
@property(nonatomic, strong) IBOutlet UITextField* inputTextField;
@property(nonatomic, strong) IBOutlet UIImageView* imageView;

@end

@implementation SJRegisterInputView

-(void) awakeFromNib
{
    [super awakeFromNib];
    
    [self setTitle:nil];
    [self setInputValue:nil];
    
    [[NSBundle mainBundle] loadNibNamed:@"SJRegisterInputView" owner:self options:nil];
    [self addSubview:_view];
    [_view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onTextFiledValueChanged:) name:UITextFieldTextDidChangeNotification object:_inputTextField];
}

-(void) dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

-(void) onTextFiledValueChanged:(NSNotification*)notify
{
    UITextField* textField = (UITextField*)notify.object;
    if ([textField isEqual:_inputTextField]) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(inputView:didInputValueChanged:)]) {
            [self.delegate inputView:self didInputValueChanged:textField.text];
        }
    }
}

-(void) setTitle:(NSString *)title
{
    _title = title;
    self.titleLabel.text = title;
}

-(void) setInputValue:(NSString *)inputValue
{
    _inputValue = inputValue;
    self.inputTextField.text = inputValue;
}

-(void) setSecureInput:(BOOL)secureInput
{
    _secureInput = secureInput;
    [self.inputTextField setSecureTextEntry:secureInput];
}

@end
