//
//  YJYYDataSource.m
//  TableViewTest
//
//  Created by 遇见远洋 on 16/10/18.
//  Copyright © 2016年 遇见远洋. All rights reserved.
//

#import "YJYYDataSource.h"
#import "YJYYCustomCell.h"
#import "YJYYCustomModel.h"

#define RamdonColor [UIColor colorWithRed:arc4random()% 255/256.0 green:arc4random()% 255/256.0 blue:arc4random()% 255/256.0 alpha:1.0]

static NSString * const cellId = @"cellReuseIdentifier";

@interface YJYYDataSource ()
@property (strong,nonatomic)NSArray<YJYYCustomModel *> *dataArray;/**<数据入口*/

@property (nonatomic,copy) ConfigCellBlock configBlock/**<回调block*/;
@end

@implementation YJYYDataSource

+ (instancetype)dataSourceWith:(NSArray *)dataArray dataConfigBlock:(ConfigCellBlock)block {
    YJYYDataSource * dataSource= [[YJYYDataSource alloc]init];
    dataSource.dataArray = dataArray;
    dataSource.configBlock = block;
    return dataSource;
}

#pragma mark - KtTableViewDataSource
/**
 *  返回模型
 *
 *  @param tableView tableView
 *  @param indexPath 索引
 *
 *  @return 数据模型
 */
- (YJYYCustomModel *)tableView:(UITableView *)tableView objectForRowAtIndexPath:(NSIndexPath *)indexPath {
   
    if ([self.dataArray count] > indexPath.row) {
        return [self.dataArray objectAtIndex:indexPath.row];
    }
    return nil;
}


/**
 *  返回cell的类型
 *
 *  @param tableView tableView
 *  @param object    模型
 *
 *  @return cell
 */
- (YJYYCustomCell *)tableView:(UITableView*)tableView cellClassForObject:(YJYYCustomModel *)object {
    
    return [[YJYYCustomCell alloc]init];
}


#pragma mark- XXXXXXXXXXXXXXX数据源方法XXXXXXXXXXXXXXXXXXXX
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    YJYYCustomCell * cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    if (!cell) {
        cell = [[YJYYCustomCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    cell.backgroundColor = RamdonColor;
    id item = [self.dataArray objectAtIndex:indexPath.row];
    self.configBlock(cell,item);
    return cell;
}


#pragma mark - UITableViewDataSource 可选的方法
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;//默认为1 如果需要从外界传入 可以将self.dataArray变成二维数组
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {

    return nil;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
  
    return nil;
}



@end
