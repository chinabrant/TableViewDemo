//
//  NormalCellViewModel.h
//  TableViewDemo
//
//  Created by brant on 2017/12/7.
//  Copyright © 2017年 Brant. All rights reserved.
//

#import "BaseCellViewModel.h"
#import "YTTableCellViewModelProtocol.h"

@interface NormalCellViewModel : BaseCellViewModel <YTTableCellViewModelProtocol>

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *desc;

@end
