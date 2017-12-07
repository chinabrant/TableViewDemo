//
//  FirstCell.m
//  TableViewDemo
//
//  Created by brant on 2017/12/7.
//  Copyright © 2017年 Brant. All rights reserved.
//

#import "FirstCell.h"
#import "FirstCellViewModel.h"

@interface FirstCell ()

@property (weak, nonatomic) IBOutlet UILabel *usernameLabel;


@end

@implementation FirstCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+ (void)registerFor:(UITableView *)table {
    [table registerNib:[UINib nibWithNibName:@"FirstCell" bundle:nil] forCellReuseIdentifier:[FirstCellViewModel identifier]];
}

- (void)configCellWithViewModel:(id)viewModel {
    FirstCellViewModel *vm = viewModel;
    
    self.usernameLabel.text = vm.username;
}

@end
