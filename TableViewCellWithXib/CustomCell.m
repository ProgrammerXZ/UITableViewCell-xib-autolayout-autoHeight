//
//  CustomCell.m
//  TableViewCellWithXib
//
//  Created by 国强 阴 on 15/8/12.
//  Copyright (c) 2015年 国强 阴. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (void)awakeFromNib {
    self.titleT.backgroundColor = [UIColor grayColor];
    self.subTitle.backgroundColor = [UIColor redColor];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
+ (instancetype)customCell
{
    return [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:nil options:nil][0];
}

- (void)setTitleStr:(NSString *)titleStr
{
    _titleStr = titleStr;
    self.titleT.text = titleStr;
}
- (void)setSubTitleStr:(NSString *)subTitleStr
{
    _subTitleStr = subTitleStr;
    self.subTitle.text = subTitleStr;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    [self.contentView setNeedsLayout];
    [self.contentView layoutIfNeeded];
    
    CGFloat availableLabelWidth = self.titleT.frame.size.width;
    self.titleT.preferredMaxLayoutWidth = availableLabelWidth;
    
    CGFloat availableLabelWidth1 = self.subTitle.frame.size.width;
    self.subTitle.preferredMaxLayoutWidth = availableLabelWidth1;
}
@end
