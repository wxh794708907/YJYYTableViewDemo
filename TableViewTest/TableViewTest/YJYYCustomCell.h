//
//  YJYYCustomCell.h
//  TableViewTest
//
//  Created by 遇见远洋 on 16/10/18.
//  Copyright © 2016年 遇见远洋. All rights reserved.
//

#import <UIKit/UIKit.h>
@class YJYYCustomModel;

@interface YJYYCustomCell :UITableViewCell

/**
 *  配置cell数据
 *
 *  @param model 模型
 */
- (void)configCellWithModel:(id)model;


/**
 *  返回cell行高
 *
 *  @param tableView tableView
 *  @param object    模型
 *
 *  @return 行高
 */
- (CGFloat)tableView:(UITableView*)tableView rowHeightForObject:(YJYYCustomModel *)object;

@end
