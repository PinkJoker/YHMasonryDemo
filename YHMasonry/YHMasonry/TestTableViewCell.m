//
//  TestTableViewCell.m
//  YHMasonry
//
//  Created by 我叫MT on 16/10/29.
//  Copyright © 2016年 Pinksnow. All rights reserved.
//

#import "TestTableViewCell.h"
#import "TestModal.h"


@interface TestTableViewCell ()
//定义一个contentLabel文本高度的属性
@property (nonatomic,assign) CGFloat contentLabelH;
@property (nonatomic,assign)CGFloat titleHeight;
@property(nonatomic, assign)CGFloat littleHeight;
@end

@implementation TestTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//        [self creatView];
//    }
//    return self;
//}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self creatView];
    }
    return self;
}
-(void)creatView
{
    self.iconImage = [[UIImageView alloc]init];
    [self.contentView addSubview:self.iconImage];
    self.iconImage.backgroundColor = [UIColor redColor];
    self.label = [[UILabel alloc]init];
    self.label.numberOfLines = 0;
    [self.contentView addSubview:self.label];
    self.label.backgroundColor = [UIColor yellowColor];
    self.label.font = [UIFont systemFontOfSize:16];
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    weakObj(self, weakSelf);
    [self.iconImage  mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(kLeft);
        make.width.mas_equalTo(kWidth *0.25);
        make.top.mas_equalTo(10);
        make.height.mas_equalTo(weakSelf.iconImage.mas_width).multipliedBy(0.6);
    }];
}

-(void)setModal:(TestModal *)modal
{
    _modal = modal;
    self.label.text = modal.title;
    self.label.sd_layout
    .topSpaceToView(self.iconImage,10)
    .leftSpaceToView(self.contentView, 10)
    .rightSpaceToView(self.contentView,10)
    .autoHeightRatio(0);
    [self setupAutoHeightWithBottomView:self.label bottomMargin:10];
//    self.littleLabel.text = modal.discribe;
}

//-(CGFloat)heightForRow:(TestModal *)modal
//{
//    _modal = modal;
//    self.label.text = modal.title;
//    CGSize size = CGSizeMake(kWidth-20, MAXFLOAT);
//    CGFloat titleHeight = [modal.title boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:16]} context:nil].size.height;
//    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.height.mas_equalTo(titleHeight);
//    }];
////    [self layoutIfNeeded]; /
//    CGFloat cellHeight = CGRectGetMaxY(self.label.frame);
//    return cellHeight +10;
//    
//}

//-(CGFloat)titleHeight
//{
//    if (!_titleHeight) {
//
//        _titleHeight = titleHeight;
//    }
//    return _titleHeight;
//
//}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
