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
#import "YTTableView.h"

@interface DemoViewController ()

@property (nonatomic, strong) DemoViewModel *viewModel;

@property (nonatomic, strong) YTTableView *tableView;

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0xef/255.0 green:0xef/255.0 blue:0xef/255.0 alpha:1];
    
    [self setupViews];
    
    self.tableView.sections = self.viewModel.sections;
}

- (void)setupViews {
    [self.view addSubview:self.tableView];
    self.tableView.frame = self.view.bounds;
}


#pragma mark - lazy load

- (DemoViewModel *)viewModel  {
    if (!_viewModel) {
        _viewModel = [DemoViewModel new];
    }
    
    return _viewModel;
}

- (YTTableView *)tableView {
    if (!_tableView) {
        _tableView = [YTTableView new];
        _tableView.backgroundColor = [UIColor clearColor];
        
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.tableFooterView = [UIView new];
    }
    
    return _tableView;
}

@end
