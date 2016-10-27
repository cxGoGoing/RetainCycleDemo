//
//  ReasonViewController.m
//  RetainCycleDemo
//
//  Created by chengxun on 16/10/11.
//  Copyright © 2016年 chengxun. All rights reserved.
//

#import "ReasonViewController.h"
#import "YYFPSLabel.h"
#import "ReasonCell.h"
#import <PureLayout.h>
@interface ReasonViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,weak)UITableView * tableView;
@end

@implementation ReasonViewController
- (UITableView*)tableView{
    if(!_tableView){
        UITableView * tableView = [[UITableView alloc]init];
        tableView.dataSource = self;
        tableView.delegate = self;
        tableView.rowHeight = 80;
        [tableView registerClass:[ReasonCell class] forCellReuseIdentifier:NSStringFromClass([ReasonCell class])];
        [self.view addSubview:(_tableView = tableView)];
    }
    return _tableView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    [self.tableView autoPinEdgesToSuperviewEdges];
    // Do any additional setup after loading the view.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 30;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ReasonCell * cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([ReasonCell class])];
    cell.indexPath = indexPath;
    cell.didTouch = ^(NSIndexPath*indexPath){
        [self.tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
        NSLog(@"======= %@ =======",indexPath);
    };
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)dealloc{
    NSLog(@"被杀死了");

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
