//
//  YTCellProtocol.h
//  TableViewDemo
//
//  Created by brant on 2017/12/7.
//  Copyright © 2017年 Brant. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol YTCellProtocol <NSObject>

@required


/**
 通过 view model 来配置cell, table view 的数据源里面装的都会是 view model
 
 @param viewModel: cell 对应的 view model
 */
- (void)configCellWithViewModel:(id)viewModel;


/**
 给table view 注册cell 方便复用，不用知道cell是用xib的形式，还是代码的形式实现的
 
 @param table 要注册的table view
 */
+ (void)registerFor:(UITableView *)table;


@end
