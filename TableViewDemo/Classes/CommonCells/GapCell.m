//
//  GapCell.m
//  TableViewDemo
//
//  Created by brant on 2017/12/7.
//  Copyright © 2017年 Brant. All rights reserved.
//

#import "GapCell.h"
#import "GapCellViewModel.h"

@implementation GapCell

+ (void)registerFor:(UITableView *)table {
    [table registerClass:[GapCell class] forCellReuseIdentifier:[GapCellViewModel identifier]];
}

- (void)configCellWithViewModel:(id)viewModel {
    GapCellViewModel *vm = viewModel;
    
    if (vm.backgroundColor) {
        
        self.contentView.backgroundColor = vm.backgroundColor;
    }
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.contentView.backgroundColor = [UIColor colorWithRed:0xef/255.0 green:0xef/255.0 blue:0xef/255.0 alpha:1];
    }
    
    return self;
}

@end
