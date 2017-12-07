//
//  FirstCellViewModel.h
//  TableViewDemo
//
//  Created by brant on 2017/12/7.
//  Copyright © 2017年 Brant. All rights reserved.
//

#import "BaseCellViewModel.h"
#import "YTTableCellViewModelProtocol.h"

@interface FirstCellViewModel : BaseCellViewModel <YTTableCellViewModelProtocol>

@property (nonatomic, copy) NSString *username;

@end
