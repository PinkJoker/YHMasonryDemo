//
//  TestModal.m
//  YHMasonry
//
//  Created by 我叫MT on 16/10/29.
//  Copyright © 2016年 Pinksnow. All rights reserved.
//

#import "TestModal.h"
#import "TestTableViewCell.h"
static NSString *const testcell = @"testcell";
@implementation TestModal

//惰性初始化是这样写的 只会加载一次，不会造成循环引用的性能问题
-(CGFloat)cellHeight
{
    //只在初始化的时候调用一次就Ok
    if(!_cellHeight){
        TestTableViewCell *cell=[[TestTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:testcell];
        NSLog(@"我要计算高度");
        // 调用cell的方法计算出高度
        _cellHeight=[cell heightForRow: self];
        
    }
    return _cellHeight;
}

@end
