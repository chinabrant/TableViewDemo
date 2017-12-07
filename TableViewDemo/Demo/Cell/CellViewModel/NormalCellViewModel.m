//
//  NormalCellViewModel.m
//  TableViewDemo
//
//  Created by brant on 2017/12/7.
//  Copyright © 2017年 Brant. All rights reserved.
//

#import "NormalCellViewModel.h"

@implementation NormalCellViewModel

- (CGFloat)cellHeight {
    return 40.0;
}


/**
 返回cell的复用id
 
 @return cell的复用id
 */
+ (NSString *)identifier {
    return @"NormalCell";
}


+ (void)registerFor:(UITableView *)table {
    [table registerNib:[UINib nibWithNibName:@"NormalCell" bundle:nil] forCellReuseIdentifier:[NormalCellViewModel identifier]];
}

@end
