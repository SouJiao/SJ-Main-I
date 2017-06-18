//
//  SJMineViewController.h
//  SouJiao
//
//  Created by Ares on 2017/4/23.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJBaseViewController.h"

typedef NS_ENUM(NSInteger, SJMineViewControllerItems)
{
    // 机构中心
    SJMineViewControllerOrganization,
    // 评分
    SJMineViewControllerScore,
    // 设置
    SJMineViewControllerSettings,
    // 消息
    SJMineViewControllerMessage,
    // 用户反馈
    SJMineViewControllerFeedback,
    // 关于
    SJMineViewControllerAbout,
};

@interface SJMineViewController : SJBaseViewController

@end
