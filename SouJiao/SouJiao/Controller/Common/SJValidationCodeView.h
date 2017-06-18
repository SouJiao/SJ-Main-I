//
//  SJValidationCodeView.h
//  SouJiao
//
//  Created by Ares on 2017/6/18.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SJValidationCodeView : UIView

-(void) changeCode;

-(BOOL) isCodeValid:(NSString*)code;

@end
