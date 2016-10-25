//
//  HomeViewController.m
//  YH.Masonry-Demo
//
//  Created by 我叫MT on 16/10/21.
//  Copyright © 2016年 Pinksnow. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeModel.h"
#import "HomeViewCell.h"
@interface HomeViewController ()
@property (nonatomic,strong) NSMutableArray *arr; //存放的我们自定义的数据
@property (nonatomic,strong) NSMutableArray *arrModel; //存放的数据模型
@property (nonatomic,strong) NSMutableDictionary *cellHeightCache; //缓存每一行的行高
@end

@implementation HomeViewController

-(NSMutableArray *)arr
{
    if(_arr==nil){
        _arr=[NSMutableArray array];
        [_arr addObject:@"高通与小米达成专利授权协议的主要影响在于小米的海外市场，因为在国内小米并不会遇到专利问题。然而，分析小米在海外遇到的问题会发现，这远不是签订一个专利协议能解决"];
        [_arr addObject:@"当年科比和乔丹的对决，那时的科比几乎无所不能，谁又会想到他会退役，说不定再过10年，我也就退役了。"];
        [_arr addObject:@"高通与小米达成专利授权协议的主要影响在于小米的海外市场，因为在国内小米并不会遇到专利问题。然而，分析小米在海外遇到的问题会发现，这远不是签订一个专利协议能解决"];
        [_arr addObject:@"佛堂中，大师正在对弟子讲话：“为师为你们所起之名并非随随便便，而是为师对你们的期望，你们懂了吗？”众弟子都回答懂了。只有一名弟子默然不语。大师见状，问那名弟子道：“圆寂，你为什么不说话?"];
        [_arr addObject:@"最后这个例子是老例子了最后这个例子是老例子了，我想给大家看看其实Masonry做动画也和其他的Autolayout方法一样，但是添加约束的代码却非常的少最后这个例子是老例子了，我想给大家看看其实Masonry做动画也和其他的Autolayout方法一样，但是添加约束的代码却非常的少最后这个例子是老例子了，我想给大家看看其实Masonry做动画也和其他的Autolayout方法一样，但是添加约束的代码却非常的少最后这个例子是老例子了，我想给大家看看其实Masonry做动画也和其他的Autolayout方法一样，但是添加约束的代码却非常的少最后这个例子是老例子了，我想给大家看看其实Masonry做动画也和其他的Autolayout方法一样，但是添加约束的代码却非常的少最后这个例子是老例子了，我想给大家看看其实Masonry做动画也和其他的Autolayout方法一样，但是添加约束的代码却非常的少"];
        [_arr addObject:@"今天和老婆吵架,吵到激烈的时候,我突然觉得我一个大男人为什么要和一个女人一般见识呢?何况还是自己的老婆!当时我就跟老婆道了歉,老婆挺高兴的.道完歉,她哥哥把菜刀放下了,她弟弟把铁锹也放下了,她妹妹拽着我头发的手也松开了,妹夫手里的擀面杖也扔地下了,老丈人也把砖头丢开了;"];
        [_arr addObject:@"昨天去一家工厂面试监工，给出的工资太低，简直不能忍。最后跟主管去车间看了看，我觉得工资只是数字而已，关键是学习的机会，所以留下来了。"];
        [_arr addObject:@"大家好，我是他主治医生。请原谅他，他因为神经病引起的并发症迷恋上了装逼，去年高考 ，他差一点就上清华了，现在想来依然倍感惋惜，清华分数695，他考了69.5，就差那么一点。巨大的打击彻底粉碎了他对未来的憧憬，整日在家自暴自弃专研怎么装逼，终成为新一代装逼大师，将装逼 方法研究的出神入化，各种装逼方法，无死角装逼，终于横空出世…。你看，他又在装逼.......你懂个求啊复活甲阿克苏的话费卡会受到接口费高科技和广发坚实的股份为福嘎哈ID施工方黄金卡闪光灯和房间爱开始的巨化股份"];
        [_arr addObject:@"高通与小米达成专利授权协议的主要影响在于小米的海外市场，因为在国内小米并不会遇到专利问题。然而，分析小米在海外遇到的问题会发现，这远不是签订一个专利协议能解决，周鸿祎的当别人都这么做的时候，我们换一种方式去做；和雷军的打败一种东西的一定是更新的东西而不是简单的复制。越想越觉得他们的理念异曲同工周鸿祎的当别人都这么做的时候，我们换一种方式去做；和雷军的打败一种东西的一定是更新的东西而不是简单的复制。越想越觉得他们的理念异曲同工周鸿祎的当别人都这么做的时候，我们换一种方式去做；和雷军的打败一种东西的一定是更新的东西而不是简单的复制。越想越觉得他们的理念异曲同工周鸿祎的当别人都这么做的时候，我们换一种方式去做；和雷军的打败一种东西的一定是更新的东西而不是简单的复制。越想越觉得他们的理念异曲同工周鸿祎的当别人都这么做的时候，我们换一种方式去做；和雷军的打败一种东西的一定是更新的东西而不是简单的复制。越想越觉得他们的理念异曲同工周鸿祎的当别人都这么做的时候，我们换一种方式去做；和雷军的打败一种东西的一定是更新的东西而不是简单的复制。越想越觉得他们的理念异曲同工周鸿祎的当别人都这么做的时候，我们换一种方式去做；和雷军的打败一种东西的一定是更新的东西而不是简单的复制。越想越觉得他们的理念异曲同工周鸿祎的当别人都这么做的时候，我们换一种方式去做；和雷军的打败一种东西的一定是更新的东西而不是简单的复制。越想越觉得他们的理念异曲同工周鸿祎的当别人都这么做的时候，我们换一种方式去做；和雷军的打败一种东西的一定是更新的东西而不是简单的复制。越想越觉得他们的理念异曲同工周鸿祎的当别人都这么做的时候，我们换一种方式去做；和雷军的打败一种东西的一定是更新的东西而不是简单的复制。越想越觉得他们的理念异曲同工"];
        [_arr addObject:@"很多时候我们过高估计了机遇的力量，低估了规划的重要性，不明确的乐观主义者只知道未来越来越好，却不知道究竟多好，因此不去制定具体计划。他想在未来获利，但是却认为没有必要制定具体规划。"];
        [_arr addObject:@"高通与小米达成专利授权协议的主要影响在于小米的海外市场，因为在国内小米并不会遇到专利问题。然而，分析小米在海外遇到的问题会发现，这远不是签订一个专利协议能解决"];
        for (int i = 0; i<5; i++) {
            [_arr addObject:@"1234567891234567891234516327849612384567182354876125378645167234"];
        }
               [_arr addObject:@"To stop the Xcode 8 iOS Simulator from logging like crazy, set OS_ACTIVITY_MODE = disable in your debug scheme.To stop the Xcode 8 iOS Simulator from logging like crazy, set OS_ACTIVITY_MODE = disable in your debug scheme."];
          [_arr addObject:@"To stop the Xcode 8 iOS Simulator from logging like crazy, set OS_ACTIVITY_MODE = disable in your debug scheme."];
          [_arr addObject:@"To stop the Xcode 8 iOS Simulator from logging like crazy, set OS_ACTIVITY_MODE = disable in your debug scheme.To stop the Xcode 8 iOS Simulator from logging like crazy, set OS_ACTIVITY_MODE = disable in your debug scheme.To stop the Xcode 8 iOS Simulator from logging like crazy, set OS_ACTIVITY_MODE = disable in your debug scheme."];
          [_arr addObject:@"To stop the Xcode 8 iOS Simulator from logging like crazy, set OS_ACTIVITY_MODE = disable in your debug scheme."];
          [_arr addObject:@"To stop the Xcode 8 iOS Simulator from logging like crazy, set OS_ACTIVITY_MODE = disable in your debug scheme.To stop the Xcode 8 iOS Simulator from logging like crazy, set OS_ACTIVITY_MODE = disable in your debug scheme.To stop the Xcode 8 iOS Simulator from logging like crazy, set OS_ACTIVITY_MODE = disable in your debug scheme.To stop the Xcode 8 iOS Simulator from logging like crazy, set OS_ACTIVITY_MODE = disable in your debug scheme.To stop the Xcode 8 iOS Simulator from logging like crazy, set OS_ACTIVITY_MODE = disable in your debug scheme.To stop the Xcode 8 iOS Simulator from logging like crazy, set OS_ACTIVITY_MODE = disable in your debug scheme."];
        [_arr addObject:@"To stop the Xcode 8 iOS Simulator from logging like crazy, set OS_ACTIVITY_MODE = disable in your debug scheme.To stop the Xcode 8 iOS Simulator from logging like crazy, set OS_ACTIVITY_MODE = disable in your debug scheme."];
   
        for (int i = 0; i<10; i++) {
                [_arr addObject:@"To stop the Xcode 8 iOS Simulator from logging like crazy, set OS_ACTIVITY_MODE = disable in your debug scheme.To stop the Xcode 8 iOS Simulator from logging like crazy, set OS_ACTIVITY_MODE = disable in your debug scheme."];
        }
        for(int i=0;i<_arr.count;i++){
            HomeModel *m=[[HomeModel alloc]init];
            m.icon=[NSString stringWithFormat:@"%i",i%9];
            m.content=_arr[i];
            //把模型那存到模型数组中
            [self.arrModel addObject:m];
            
        }
        
    }
    return _arr;
}
-(NSMutableDictionary *)cellHeightCache
{
    if(!_cellHeightCache){
        _cellHeightCache = [NSMutableDictionary dictionary];
    }
    return _cellHeightCache;
}

-(NSMutableArray *)arrModel
{
    if(_arrModel==nil){
        _arrModel=[NSMutableArray array];
    }
    return _arrModel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
  //  self.tableView.separatorStyle=UITableViewCellSeparatorStyleNone;//去掉默认下划线
    self.tableView.estimatedRowHeight=200; //预估行高 可以提高性能
    self.tableView.rowHeight = 88;
    //注册表格单元
    [self.tableView registerClass:[HomeViewCell class] forCellReuseIdentifier:homeIndentifier];
    
}


/*
 返回多少行
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //因为是我们自定义的数据 所以 这里写array而不是arrayModel  因为只有这样才会调用arr的懒加载犯法
    return self.arr.count;
}

/*
 返回表格单元
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //取出模型
    HomeModel *model=self.arrModel[indexPath.row];
    HomeViewCell *cell = [tableView dequeueReusableCellWithIdentifier:homeIndentifier forIndexPath:indexPath];
    
    //传递模型给cell
    cell.homeModel=model;
    
    return cell;
}

/*
 *  返回每一个表格单元的高度
 */

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //第一种方法
        HomeModel *homeModel = self.arrModel[indexPath.row];
        return homeModel.cellHeight;
//    //另一种实现方法
//    id h = [self.cellHeightCache objectForKey:@(indexPath.row)];
//    if(h){
//        NSLog(@"%@",h);
//        return [h floatValue];
//        
//    }
//    //取出模型
//    HomeModel *homeModel=self.arrModel[indexPath.row];
//    HomeViewCell *cell = [tableView dequeueReusableCellWithIdentifier:homeIndentifier];
//    //行高放入缓存
//    CGFloat  cellH = [cell rowHeightWithCellModel:homeModel];
//    [self.cellHeightCache setObject:@(cellH) forKey:@(indexPath.row)];
//    return cellH;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
