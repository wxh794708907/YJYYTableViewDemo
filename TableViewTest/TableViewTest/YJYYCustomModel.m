//
//  YJYYCustomModel.m
//  TableViewTest
//
//  Created by 遇见远洋 on 16/10/26.
//  Copyright © 2016年 遇见远洋. All rights reserved.
//

#import "YJYYCustomModel.h"
CGFloat const CellInvalidHeight = -1;

@implementation YJYYCustomModel
- (instancetype)init {
    if(self = [super init]){
        _cellHeight = CellInvalidHeight;
    }
    return self;
}
@end
