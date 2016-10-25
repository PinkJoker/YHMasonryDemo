//
//  HomeViewCell.h
//  YH.Masonry-Demo
//
//  Created by 我叫MT on 16/10/21.
//  Copyright © 2016年 Pinksnow. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>

@class HomeModel;

static  NSString *homeIndentifier=@"homeCell";

@interface HomeViewCell : UITableViewCell

//数据模型
@property (nonatomic,strong) HomeModel *homeModel;

//我们最后得到cell的高度的方法
-(CGFloat)rowHeightWithCellModel:(HomeModel *)homeModel;

@end
