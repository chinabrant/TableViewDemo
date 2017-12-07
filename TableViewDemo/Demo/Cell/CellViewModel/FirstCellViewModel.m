//
//  FirstCellViewModel.m
//  TableViewDemo
//
//  Created by brant on 2017/12/7.
//  Copyright © 2017年 Brant. All rights reserved.
//

#import "FirstCellViewModel.h"
#import <Foundation/Foundation.h>

@implementation FirstCellViewModel

/**
 返回cell的高度, 这个方法是在view model中实现，view model中有cell的全部数据，所以这里可以通过数据计算高度，或者直接返回固定高度
 
 @return cell的高度
 */
- (CGFloat)cellHeight {
    return 40.0;
}


/**
 返回cell的复用id
 
 @return cell的复用id
 */
+ (NSString *)identifier {
    return @"FirstCell";
}

+ (void)registerFor:(UITableView *)table {
    [table registerNib:[UINib nibWithNibName:@"FirstCell" bundle:nil] forCellReuseIdentifier:[FirstCellViewModel identifier]];
}

@end
