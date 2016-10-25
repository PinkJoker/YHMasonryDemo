//
//  HomeModel.h
//  YH.Masonry-Demo
//
//  Created by 我叫MT on 16/10/21.
//  Copyright © 2016年 Pinksnow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface HomeModel : NSObject

@property (nonatomic,copy) NSString *icon; //图片
@property (nonatomic,copy) NSString *content; //内容的label
//单元格的高度
@property (nonatomic,assign)CGFloat cellHeight;

@end
