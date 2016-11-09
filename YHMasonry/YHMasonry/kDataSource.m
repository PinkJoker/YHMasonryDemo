//
//  kDataSource.m
//  YHMasonry
//
//  Created by 我叫MT on 16/10/29.
//  Copyright © 2016年 Pinksnow. All rights reserved.
//

#import "kDataSource.h"
#import "TestModal.h"
#import "TestTableViewCell.h"
static NSString *const testcell = @"testcell";
@interface kDataSource  ()
@property(nonatomic, copy)NSArray *itemArray;
@property(nonatomic, copy)NSString *cellIdenfier;
@property(nonatomic, copy)TableViewCellConfigureBlock configureBlock;

@end
@implementation kDataSource
-(id)initWithtableViewWithRow:(NSArray *)items cellIdentifier:(NSString *)identifier configureCellBlock:(TableViewCellConfigureBlock)kConfigureCellBlock
{
    self = [super init];
    if (self) {
        self.itemArray =items;
        self.cellIdenfier = identifier;
        self.configureBlock =[kConfigureCellBlock copy];
        
    }
    return self;
}
-(id)itemAtIndexPath:(NSIndexPath *)indexPath
{
    return self.itemArray[indexPath.row];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"%lu",(unsigned long)self.itemArray.count);
  return   self.itemArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TestTableViewCell *testCell = [tableView dequeueReusableCellWithIdentifier:testcell];
    if (!testCell) {
        testCell = [[TestTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:testcell];
    }
    id item = [self itemAtIndexPath:indexPath];
    self.configureBlock(testCell,item);
    return testCell;
}


@end
