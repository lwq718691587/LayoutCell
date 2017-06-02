//
//  MyTableViewCell.m
//  LayoutCell
//
//  Created by 刘伟强 on 2017/6/1.
//  Copyright © 2017年 刘伟强. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.myTextLabel.preferredMaxLayoutWidth = [UIScreen mainScreen].bounds.size.width - 20;
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
