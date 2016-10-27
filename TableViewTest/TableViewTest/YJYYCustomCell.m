//
//  YJYYCustomCell.m
//  TableViewTest
//
//  Created by 遇见远洋 on 16/10/18.
//  Copyright © 2016年 遇见远洋. All rights reserved.
//

#import "YJYYCustomCell.h"
#import "YJYYCustomModel.h"

@implementation YJYYCustomCell

- (void)configCellWithModel:(id)model {
    //这里是自定义cell里面要赋值的内容 自己写
}


- (CGFloat)tableView:(UITableView*)tableView rowHeightForObject:(YJYYCustomModel *)object {
    //cell行高是由你自定义cell加上数据来决定的 自己写
    return 44.0f;
}
@end
