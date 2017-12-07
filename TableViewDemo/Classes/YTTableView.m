//
//  YTTableView.m
//  TableViewDemo
//
//  Created by brant on 2017/12/7.
//  Copyright © 2017年 Brant. All rights reserved.
//

#import "YTTableView.h"
#import "YTCellProtocol.h"
#import "YTTableCellViewModelProtocol.h"
#import "TableViewSection.h"

@interface YTTableView () <UITableViewDataSource, UITableViewDelegate>


@end

@implementation YTTableView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.dataSource = self;
        self.delegate = self;
    }
    return self;
}

- (void)setSections:(NSArray *)sections {
    _sections = sections;
    
    [self reloadData];
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.sections.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    TableViewSection *sectionModel = self.sections[section];
    return sectionModel.numberOfRows;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TableViewSection *sectionModel = self.sections[indexPath.section];
    id <YTTableCellViewModelProtocol> vm = sectionModel.viewModels[indexPath.row];
    
    // 这里会返利注册，看能否有更好的写法。或者在设置sections的时候统一注册？
    [[vm class] registerFor:tableView];
    
    UITableViewCell<YTCellProtocol> *cell = [tableView dequeueReusableCellWithIdentifier:[[vm class] identifier]];
    [cell configCellWithViewModel:vm];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TableViewSection *sectionModel = self.sections[indexPath.section];
    id <YTTableCellViewModelProtocol> vm = sectionModel.viewModels[indexPath.row];
    return [vm cellHeight];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (self.didSelectRow) {
        TableViewSection *sectionModel = self.sections[indexPath.section];
        self.didSelectRow(sectionModel.viewModels[indexPath.row], sectionModel.sectionKey);
    }
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    TableViewSection *sectionModel = self.sections[section];
    if (self.viewForSectionHeader) {
        return self.viewForSectionHeader(sectionModel.sectionKey);
    }
    
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    TableViewSection *sectionModel = self.sections[section];
    if (self.heightForSectionHeader) {
        return self.heightForSectionHeader(sectionModel.sectionKey);
    }
    
    return 0;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    TableViewSection *sectionModel = self.sections[section];
    if (self.viewForSectionFooter) {
        return self.viewForSectionFooter(sectionModel.sectionKey);
    }
    
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    TableViewSection *sectionModel = self.sections[section];
    if (self.heightForSectionFooter) {
        return self.heightForSectionFooter(sectionModel.sectionKey);
    }
    
    return 0;
}

@end
