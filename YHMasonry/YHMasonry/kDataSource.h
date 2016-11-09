//
//  kDataSource.h
//  YHMasonry
//
//  Created by 我叫MT on 16/10/29.
//  Copyright © 2016年 Pinksnow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef void (^TableViewCellConfigureBlock)(id cell, id item);

@interface kDataSource : NSObject <UITableViewDataSource>

-(id)initWithtableViewWithRow:(NSArray *)items cellIdentifier:(NSString *)identifier
             configureCellBlock:(TableViewCellConfigureBlock)configureCellBlock;
-(id)itemAtIndexPath:(NSIndexPath *)indexPath;

@end
