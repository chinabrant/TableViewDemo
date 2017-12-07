//
//  GapCellViewModel.m
//  TableViewDemo
//
//  Created by brant on 2017/12/7.
//  Copyright © 2017年 Brant. All rights reserved.
//

#import "GapCellViewModel.h"
#import "GapCell.h"

@implementation GapCellViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _height = 6.0;
    }
    return self;
}

- (CGFloat)cellHeight {
    return self.height;
}


/**
 返回cell的复用id
 
 @return cell的复用id
 */
+ (NSString *)identifier {
    return @"GapCell";
}

+ (void)registerFor:(UITableView *)table {
    [table registerClass:[GapCell class] forCellReuseIdentifier:[GapCellViewModel identifier]];
}

@end
