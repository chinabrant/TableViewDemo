//
//  SectionFactory.m
//  TableViewDemo
//
//  Created by brant on 2017/12/7.
//  Copyright © 2017年 Brant. All rights reserved.
//

#import "SectionFactory.h"
#import "GapCellViewModel.h"


@implementation SectionFactory

+ (TableViewSection *)gapSectionWithHeight:(CGFloat)hei backgroundColor:(UIColor *)color {
    GapCellViewModel *vm = [GapCellViewModel new];
    vm.height = hei;
    vm.backgroundColor = color;

    TableViewSection *section = [[TableViewSection alloc] initWithSectionKey:@"gap" viewModels:@[vm]];
    return section;
}

@end
