//
//  ReasonCell.h
//  RetainCycleDemo
//
//  Created by chengxun on 16/10/27.
//  Copyright © 2016年 chengxun. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^DidTouch)(NSIndexPath * indexPath);
@interface ReasonCell : UITableViewCell
@property (nonatomic,copy)DidTouch didTouch;
@property (nonatomic,strong)NSIndexPath * indexPath;
@end
