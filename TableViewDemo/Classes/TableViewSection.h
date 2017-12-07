//
//  TableViewSection.h
//  TableViewDemo
//
//  Created by brant on 2017/12/7.
//  Copyright © 2017年 Brant. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TableViewSection : NSObject

/**
 用来标识section的类型，要保证每个section的都不同
 代理方法里面如果要做特殊处理会用到，所以不能相同
 */
@property (nonatomic, copy) NSString *sectionKey;


/**
 section 里面 row 的 view model 集合
 */
@property (nonatomic, copy) NSArray *viewModels;


/**
 返回这个section有多少row，这个不用设置，在设置viewModels时，会自动设置
 */
@property (nonatomic, readonly) NSInteger numberOfRows;

- (instancetype)initWithSectionKey:(NSString *)key viewModels:(NSArray *)viewModels;

@end
