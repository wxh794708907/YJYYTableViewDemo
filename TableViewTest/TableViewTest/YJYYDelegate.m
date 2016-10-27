//
//  YJYYDelegate.m
//  TableViewTest
//
//  Created by 遇见远洋 on 16/10/26.
//  Copyright © 2016年 遇见远洋. All rights reserved.
//

#import "YJYYDelegate.h"
#import "YJYYCustomCell.h"
#import "YJYYDataSource.h"
#import "YJYYCustomModel.h"

@interface YJYYDelegate ()

@end

@implementation YJYYDelegate

+ (instancetype)delegate {
    return [[self alloc]init];
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(NSIndexPath*)indexPath {
    YJYYDataSource<YJYYTableViewDataSource> * dataSource = (id<YJYYTableViewDataSource>) tableView.dataSource;
    
    //通过数据源获取数据模型
    YJYYCustomModel *object = [dataSource tableView:tableView objectForRowAtIndexPath:indexPath];
    
    //通过数据源获取cell 的class
    YJYYCustomCell * cell = [dataSource tableView:tableView cellClassForObject:object];
    
    
    if (object.cellHeight == CellInvalidHeight) { //没有高度缓存的情况
        //计算cell高度
        object.cellHeight = [cell tableView:tableView rowHeightForObject:object];
    }
    return object.cellHeight;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //获取数据源对象
//    YJYYDataSource<YJYYTableViewDataSource> * dataSource = (id<YJYYTableViewDataSource>) tableView.dataSource;
    
    //获取模型
//    YJYYCustomModel * object = [dataSource tableView:tableView objectForRowAtIndexPath:indexPath];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSLog(@"点击了第%ld个Cell",indexPath.row);
}



#pragma mark - 传递原生协议
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
}


@end
