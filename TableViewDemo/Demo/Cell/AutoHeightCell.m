//
//  AutoHeightCell.m
//  TableViewDemo
//
//  Created by brant on 2017/12/7.
//  Copyright © 2017年 Brant. All rights reserved.
//

#import "AutoHeightCell.h"
#import "AutoHeightCellViewModel.h"

@interface AutoHeightCell ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;


@end

@implementation AutoHeightCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.titleLabel.preferredMaxLayoutWidth = [UIScreen mainScreen].bounds.size.width - 24;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+ (void)registerFor:(UITableView *)table {
    [table registerNib:[UINib nibWithNibName:@"AutoHeightCell" bundle:nil] forCellReuseIdentifier:[AutoHeightCellViewModel identifier]];
}

- (void)configCellWithViewModel:(id)viewModel {
    AutoHeightCellViewModel *vm = viewModel;
    
    self.titleLabel.text = vm.title;
}

@end
