//
//  CustomCell.h
//  TableViewCellWithXib
//
//  Created by 国强 阴 on 15/8/12.
//  Copyright (c) 2015年 国强 阴. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleT;
@property (weak, nonatomic) IBOutlet UILabel *subTitle;


@property (nonatomic, copy)NSString *titleStr;
@property (nonatomic, copy)NSString *subTitleStr;

+ (instancetype)customCell;
@end
