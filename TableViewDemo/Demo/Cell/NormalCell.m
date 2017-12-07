//
//  NormalCell.m
//  TableViewDemo
//
//  Created by brant on 2017/12/7.
//  Copyright © 2017年 Brant. All rights reserved.
//

#import "NormalCell.h"
#import "NormalCellViewModel.h"

@interface NormalCell ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UILabel *descLabel;


@end

@implementation NormalCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+ (void)registerFor:(UITableView *)table {
    [table registerNib:[UINib nibWithNibName:@"NormalCell" bundle:nil] forCellReuseIdentifier:[NormalCellViewModel identifier]];
}

- (void)configCellWithViewModel:(id)viewModel {
    NormalCellViewModel *vm = viewModel;
    
    self.titleLabel.text = vm.title;
    self.descLabel.text = vm.desc;
}

@end
