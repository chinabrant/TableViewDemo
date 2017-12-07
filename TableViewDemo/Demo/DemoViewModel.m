//
//  DemoViewModel.m
//  TableViewDemo
//
//  Created by brant on 2017/12/7.
//  Copyright © 2017年 Brant. All rights reserved.
//

#import "DemoViewModel.h"

@implementation DemoViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        FirstCellViewModel *firstVm = [[FirstCellViewModel alloc] init];
        firstVm.username = @"亚索";
        TableViewSection *firstSection = [[TableViewSection alloc] initWithSectionKey:@"first" viewModels:@[firstVm]];
        
        GapCellViewModel *gapVm = [[GapCellViewModel alloc] init];
        TableViewSection *gapSection = [[TableViewSection alloc] initWithSectionKey:@"gap" viewModels:@[gapVm]];
        
        NSMutableArray *arr = [NSMutableArray new];
        for (int i = 0; i < 3; i++) {
            NormalCellViewModel *vm = [[NormalCellViewModel alloc] init];
            vm.title = [NSString stringWithFormat:@"标题%d", i];
            vm.desc = [NSString stringWithFormat:@"描述%d", i];
            [arr addObject:vm];
            if (i != 2) {
                GapCellViewModel *gapVm = [[GapCellViewModel alloc] init];
                gapVm.height = 0.5;
                [arr addObject:gapVm];
            }
        }
        
        TableViewSection *normalSection = [[TableViewSection alloc] initWithSectionKey:@"normal" viewModels:[arr copy]];
        
        GapCellViewModel *gapVm2 = [[GapCellViewModel alloc] init];
        TableViewSection *gapSection2 = [[TableViewSection alloc] initWithSectionKey:@"gap" viewModels:@[gapVm2]];
        
        AutoHeightCellViewModel *autovm = [AutoHeightCellViewModel new];
        autovm.title = @"If you're already familiar with functional reactive programming or know the basic premise of ReactiveObjC, check out the other documentation in this folder for a framework overview and more in-depth information about how it all works in practice.";
        TableViewSection *autoSection = [[TableViewSection alloc] initWithSectionKey:@"auto" viewModels:@[autovm]];
        
        
        
        self.sections = @[firstSection, gapSection, normalSection, gapSection2, autoSection];
    }
    return self;
}

@end
