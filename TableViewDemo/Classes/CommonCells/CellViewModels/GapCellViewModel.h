//
//  GapCellViewModel.h
//  TableViewDemo
//
//  Created by brant on 2017/12/7.
//  Copyright © 2017年 Brant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YTTableCellViewModelProtocol.h"

@interface GapCellViewModel : NSObject <YTTableCellViewModelProtocol>

@property (nonatomic) CGFloat height;

@property (nonatomic, strong) UIColor *backgroundColor;

@end
