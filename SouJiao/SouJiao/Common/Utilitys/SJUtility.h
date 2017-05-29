//
//  SJUtility.h
//  SouJiao
//
//  Created by Ares on 2017/5/14.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIDevice+Common.h"

// 角度/弧度换算
#define DEGREE(x) ((x)*180.0/M_PI)
#define RADIAN(x) ((x)*M_PI/180.0)

//
#define iPad [UIDevice isiPad]

//
#define weakSelf(obj) __weak typeof(self) obj = self
#define weakReturn(obj) if (!obj) return;

// Block安全调用
#define SafeBlock(block, ...) if (block) block(__VA_ARGS__);
