//
//  ViewController.m
//  TableViewTest
//
//  Created by 遇见远洋 on 16/10/18.
//  Copyright © 2016年 遇见远洋. All rights reserved.
//

#import "ViewController.h"
#import "YJYYCustomCell.h"
#import "YJYYDataSource.h"
#import "YJYYCustomModel.h"
#import "YJYYTableView.h"
#import "YJYYDelegate.h"

#define SCREENWIDTH [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height

@interface ViewController ()
@property (strong,nonatomic)YJYYTableView *tableView;/**<tableView视图*/
@property (strong,nonatomic)NSMutableArray *dataArray;/**<数据源*/

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.tableView];
}


#pragma mark- XXXXXXXXXXXXXXX懒加载XXXXXXXXXXXXXXXXXXXX
/**
 *  tableView懒加载
 *
 *  @return tableView懒加载
 */
- (YJYYTableView *)tableView {
    if (!_tableView) {
        _tableView =
        [[YJYYTableView alloc] initWithFrame:CGRectMake(0, 64, SCREENWIDTH, SCREENHEIGHT) style:UITableViewStylePlain];
        
        //数据源
        _tableView.sxDataSource = [YJYYDataSource dataSourceWith:self.dataArray dataConfigBlock:^(id cell, id model) {
            [cell configCellWithModel:model];
        }];
        
        //代理
        _tableView.sxDelegate = [YJYYDelegate delegate];
    }
    return _tableView;
}


/**
 *  数据源懒加载
 *
 *  @return 数据源
 */
- (NSMutableArray *)dataArray {
    if (!_dataArray) {
        _dataArray = [NSMutableArray array];
        for (int i = 0 ; i<10; i++) {
            YJYYCustomModel * model = [[YJYYCustomModel alloc]init];
            [_dataArray addObject:model];
        }
    }
    return _dataArray;
}

@end
