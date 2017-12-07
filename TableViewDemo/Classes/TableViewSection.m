//
//  TableViewSection.m
//  TableViewDemo
//
//  Created by brant on 2017/12/7.
//  Copyright © 2017年 Brant. All rights reserved.
//

#import "TableViewSection.h"

@implementation TableViewSection

- (instancetype)initWithSectionKey:(NSString *)key viewModels:(NSArray *)viewModels {
    self = [super init];
    if (self) {
        _sectionKey = key;
        _viewModels = viewModels;
        _numberOfRows = viewModels.count;
    }
    
    return self;
}

@end
