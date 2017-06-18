//
//  SJValidationCodeInputView.m
//  SouJiao
//
//  Created by Ares on 2017/6/18.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJValidationCodeInputView.h"
#import "SJValidationCodeView.h"

@interface SJValidationCodeInputView ()

@property(nonatomic, strong) IBOutlet UIView* view;

@property(nonatomic, strong) IBOutlet UILabel* titleLabel;
@property(nonatomic, strong) IBOutlet UITextField* inputTextField;
@property(nonatomic, strong) IBOutlet SJValidationCodeView* validationView;

@end

@implementation SJValidationCodeInputView

-(void) awakeFromNib
{
    [super awakeFromNib];
    
    [[NSBundle mainBundle] loadNibNamed:@"SJValidationCodeInputView" owner:self options:nil];
    [self addSubview:_view];
    [_view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
}

-(void) setTitle:(NSString *)title
{
    self.titleLabel.text = title;
}

-(NSString*) title
{
    return self.titleLabel.text;
}

-(void) setValue:(NSString *)value
{
    self.inputTextField.text = value;
}

-(NSString*) value
{
    return self.inputTextField.text;
}

-(BOOL) isValidation
{
    NSString* inputCode = self.inputTextField.text;
    BOOL isValid = [self.validationView isCodeValid:inputCode];
    if (!isValid) {
        [self.validationView changeCode];
    }
    
    return isValid;
}

@end
