//
//  TestTableViewCell.h
//  YHMasonry
//
//  Created by 我叫MT on 16/10/29.
//  Copyright © 2016年 Pinksnow. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TestModal;
@interface TestTableViewCell : UITableViewCell

@property(nonatomic, strong)UIImageView *iconImage;
@property(nonatomic, strong)UILabel *label;
@property(nonatomic, strong)UILabel *littleLabel;
@property(nonatomic, strong)TestModal *modal;
//-(CGFloat )heightForRow:(TestModal *)modal;

@end
