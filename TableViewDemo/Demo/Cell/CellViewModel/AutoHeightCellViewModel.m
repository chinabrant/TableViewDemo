//
//  AutoHeightCellViewModel.m
//  TableViewDemo
//
//  Created by brant on 2017/12/7.
//  Copyright © 2017年 Brant. All rights reserved.
//

#import "AutoHeightCellViewModel.h"
#import "AutoHeightCell.h"

@interface AutoHeightCellViewModel ()

@property (nonatomic) CGFloat cellHei;

@end

@implementation AutoHeightCellViewModel

// 通过autolayout计算高度
- (CGFloat)cellHeight {
    
    if (self.cellHei <= 0) {
        AutoHeightCell *cell = [[NSBundle mainBundle] loadNibNamed:@"AutoHeightCell" owner:nil options:nil].firstObject;
        [cell configCellWithViewModel:self];
        
        CGFloat hei = [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height + 1;
        
        // cell 高度计算好后，缓存一下
        self.cellHei = hei;
    }
    
    return self.cellHei;
}


/**
 返回cell的复用id
 
 @return cell的复用id
 */
+ (NSString *)identifier {
    return @"AutoHeightCell";
}


+ (void)registerFor:(UITableView *)table {
    [table registerNib:[UINib nibWithNibName:@"AutoHeightCell" bundle:nil] forCellReuseIdentifier:[AutoHeightCellViewModel identifier]];
}

@end
