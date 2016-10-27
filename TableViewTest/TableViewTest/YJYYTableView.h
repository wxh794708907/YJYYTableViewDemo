//
//  YJYYTableView.h
//  TableViewTest
//
//  Created by 遇见远洋 on 16/10/26.
//  Copyright © 2016年 遇见远洋. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "YJYYDataSource.h"
#import "YJYYDelegate.h"

@interface YJYYTableView : UITableView<UITableViewDelegate>

@property (nonatomic, strong) YJYYDataSource<YJYYTableViewDataSource> * sxDataSource/**<遵循了协议的数据源对象*/;

@property (nonatomic, strong) YJYYDelegate * sxDelegate/**<代理对象*/;

@end
