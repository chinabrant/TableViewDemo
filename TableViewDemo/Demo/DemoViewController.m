//
//  DemoViewController.m
//  TableViewDemo
//
//  Created by brant on 2017/12/7.
//  Copyright © 2017年 Brant. All rights reserved.
//

#import "DemoViewController.h"
#import "DemoViewModel.h"
#import "YTCellProtocol.h"
#import "YTTableCellViewModelProtocol.h"
#import "FirstCell.h"
#import "GapCell.h"
#import "NormalCell.h"

@interface DemoViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) DemoViewModel *viewModel;

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0xef/255.0 green:0xef/255.0 blue:0xef/255.0 alpha:1];
    
    [self setupViews];
}

- (void)setupViews {
    [self.view addSubview:self.tableView];
    self.tableView.frame = self.view.bounds;
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.viewModel.sections.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    TableViewSection *sectionModel = self.viewModel.sections[section];
    return sectionModel.numberOfRows;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TableViewSection *sectionModel = self.viewModel.sections[indexPath.section];
    id <YTTableCellViewModelProtocol> vm = sectionModel.viewModels[indexPath.row];
    
    [[vm class] registerFor:tableView];
    
    UITableViewCell<YTCellProtocol> *cell = [tableView dequeueReusableCellWithIdentifier:[[vm class] identifier]];
    [cell configCellWithViewModel:vm];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TableViewSection *sectionModel = self.viewModel.sections[indexPath.section];
    id <YTTableCellViewModelProtocol> vm = sectionModel.viewModels[indexPath.row];
    return [vm cellHeight];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


#pragma mark - lazy load

- (DemoViewModel *)viewModel  {
    if (!_viewModel) {
        _viewModel = [DemoViewModel new];
    }
    
    return _viewModel;
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [UITableView new];
        
//        [FirstCell registerFor:_tableView];
//        [GapCell registerFor:_tableView];
//        [NormalCell registerFor:_tableView];
        
        _tableView.dataSource = self;
        _tableView.delegate = self;
        
        _tableView.backgroundColor = [UIColor clearColor];
        
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.tableFooterView = [UIView new];
    }
    
    return _tableView;
}

@end
