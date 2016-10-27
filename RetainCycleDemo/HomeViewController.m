//
//  HomeViewController.m
//  RetainCycleDemo
//
//  Created by chengxun on 16/10/11.
//  Copyright © 2016年 chengxun. All rights reserved.
//



#import "HomeViewController.h"
#import "ReasonViewController.h"
#import "YYFPSLabel.h"
@interface HomeViewController ()
@property (nonatomic,copy)NSString * titleHome;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Do any additional setup after loading the view.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //UINavigationController * nav = [[UINavigationController alloc]init];
    ReasonViewController * reasonVc = [[ReasonViewController alloc]init];
    [self.navigationController pushViewController:reasonVc animated:YES];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
