//
//  DemoViewModel.h
//  TableViewDemo
//
//  Created by brant on 2017/12/7.
//  Copyright © 2017年 Brant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TableViewSection.h"
#import "FirstCellViewModel.h"
#import "GapCellViewModel.h"
#import "NormalCellViewModel.h"
#import "AutoHeightCellViewModel.h"

@interface DemoViewModel : NSObject

@property (nonatomic, copy) NSArray *sections;

@end
