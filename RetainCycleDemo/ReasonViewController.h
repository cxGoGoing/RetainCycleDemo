//
//  ReasonViewController.h
//  RetainCycleDemo
//
//  Created by chengxun on 16/10/11.
//  Copyright © 2016年 chengxun. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^BackIndex)(BOOL isBack);
@interface ReasonViewController : UIViewController
@property (nonatomic,copy)BackIndex backIndex;
@end
