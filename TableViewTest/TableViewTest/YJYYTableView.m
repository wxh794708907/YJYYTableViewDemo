//
//  YJYYTableView.m
//  TableViewTest
//
//  Created by 遇见远洋 on 16/10/26.
//  Copyright © 2016年 遇见远洋. All rights reserved.
//

#import "YJYYTableView.h"
#import "YJYYCustomModel.h"
#import "YJYYCustomCell.h"
#import "YJYYDelegate.h"
static NSString * const cellId = @"cellReuseIdentifier";

@implementation YJYYTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super initWithFrame:frame style:style];
    if (self) {
        self.showsVerticalScrollIndicator = YES;
        self.showsHorizontalScrollIndicator = NO;
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
        [self registerClass:[YJYYCustomCell class] forCellReuseIdentifier:cellId];
    }
    return self;
}


- (void)setSxDataSource:(YJYYDataSource<YJYYTableViewDataSource> *)sxDataSource {
    if (_sxDataSource != sxDataSource) {
        _sxDataSource = sxDataSource;
        self.dataSource = sxDataSource;
    }
}


- (void)setSxDelegate:(YJYYDelegate *)sxDelegate {
    if (_sxDelegate != sxDelegate) {
        _sxDelegate = sxDelegate;
        self.delegate = sxDelegate;
    }
}

@end
