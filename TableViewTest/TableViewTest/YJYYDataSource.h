//
//  YJYYDataSource.h
//  TableViewTest
//
//  Created by 遇见远洋 on 16/10/18.
//  Copyright © 2016年 遇见远洋. All rights reserved.
//

#import <UIKit/UIKit.h>
@class YJYYCustomModel,YJYYCustomCell;
typedef void (^ConfigCellBlock)(id cell, id model);

@protocol YJYYTableViewDataSource <UITableViewDataSource>

@optional
/**
 *  通过遵循这个协议的对象来返回数据模型
 *
 *  @param tableView tableView
 *  @param indexPath 索引
 *
 *  @return 数据模型
 */
- (YJYYCustomModel *)tableView:(UITableView *)tableView objectForRowAtIndexPath:(NSIndexPath *)indexPath;


/**
 *  通过遵循这个协议的对象来返回cell
 *
 *  @param tableView tableView
 *  @param object    模型
 *
 *  @return 自定义cell
 */
- (YJYYCustomCell *)tableView:(UITableView*)tableView cellClassForObject:(YJYYCustomModel *)object;

@end

@interface YJYYDataSource : NSObject<YJYYTableViewDataSource>

/**
 *  根据外界传入的数据以及标识返回一个数据源
 *
 *  @param dataArray  外界传入的数据
 *  @param identifier 标识符
 *  @param block      回调block用于配置cell数据
 *
 *  @return 数据源对象
 */
+ (instancetype)dataSourceWith:(NSArray <YJYYCustomModel *>*)dataArray dataConfigBlock:(ConfigCellBlock)block;

@end
