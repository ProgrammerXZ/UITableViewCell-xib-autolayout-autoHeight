//
//  ViewController.m
//  TableViewCellWithXib
//
//  Created by 国强 阴 on 15/8/12.
//  Copyright (c) 2015年 国强 阴. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"

static NSString *cellID = @"CustomCell";
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray *_dataArray1;
    NSMutableArray *_dataArray2;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) NSMutableDictionary *offscreenCells;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _dataArray1 = [NSMutableArray arrayWithObjects:@"阿德考几分哈空间大师傅深刻的理解发货阿拉卡三等奖好烦阿历克斯接电话发来看手机的回复",@"瓦斯的环境阿克江收到货就卡死带回家卡仕达卷卡式带接口阿什顿健康阿什顿健康阿什顿健康阿什顿卷卡式带卷卡式带卷卡式带接口阿什顿空间阿什顿阿克江十大健康是但很快就阿什顿卷卡式带卷卡式带控件阿什顿健康爱神的箭卡号的啊可接受的",@"阿什顿合家安康是导航接口思考几分哈卷卡式带案件开始的徕卡是假的阿里可是你的阿里开始到哪水电暖爱上肯定能阿斯达MSDN马少年的暗示明年的马少年的阿萨姆你打没说你的",@"开始加大阿拉山口点击阿拉卡三等奖",@"大家啊肯定将拉开时间发生的路口附近啊了深刻的减肥啦开始的减肥拉克丝大家都发了卡上的减肥凉快氨基丁酸法律框架啊凉快的经适房阿里卡上的减肥啦卡上的减肥阿里卡上的减肥拉卡上的减肥",@"健康科技阿卡时间的发挥阿里快速的房间号阿历克斯的纠纷可厉害撒的开发垃圾收到了风科技苏打绿开房间苏打绿开房间老师看见对方塑料袋开发就", nil];
    
    _dataArray2 = [NSMutableArray arrayWithObjects:@"撒大家卡奥斯卡来得及阿斯利康就撒旦教",@"按计划开始大空间上大街上的阿娇圣诞节快阿什顿阿里开始交电话费阿拉卡三等奖号发来看手机的恢复了卡机是电话费",@"啊会计师的回复时间的回复就SD卡好烦是大家回复",@"回家看撒谎的法律开始的计划法律开始将对方交叉口不健康是大白菜谁看见你承诺时间的承诺吃德克士你发错金士顿农村就看你时间肯定才能使空间的承诺几十年调查大检查呢今年的厂家的拿成绩单大检查呢",@"爱是不看见大家开始的好卡不想按顺序那就是你重新那就是参加不撒娇发错吧啊数据库的部分开始了放假学开车呢想看你吃",@"和大家是客户端阿萨德哈时间虚拟机阿什顿和大家数额为吃点吧设计费吃烧烤农村西门吹雪模型农村", nil];
    
    self.tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 20)];

     [self.tableView registerNib:[UINib nibWithNibName:@"CustomCell" bundle:nil] forCellReuseIdentifier:cellID];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return _dataArray1.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.titleStr = _dataArray1[indexPath.section];
    cell.subTitleStr = _dataArray2[indexPath.section];
    
    [cell setNeedsUpdateConstraints];
    [cell updateConstraintsIfNeeded];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell *cell = [self.offscreenCells objectForKey:cellID];
    
    if (!cell) {
        cell = [CustomCell customCell];
        [self.offscreenCells setObject:cell forKey:cellID];
    }
    cell.titleStr = _dataArray1[indexPath.section];
    cell.subTitleStr = _dataArray2[indexPath.section];
    [cell setNeedsUpdateConstraints];
    [cell updateConstraintsIfNeeded];
    cell.bounds = CGRectMake(0.0f, 0.0f, CGRectGetWidth(tableView.bounds), CGRectGetHeight(cell.bounds));
    [cell setNeedsLayout];
    [cell layoutIfNeeded];
    
    CGFloat height = [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
    NSLog(@"%f",height);
    return height + 1.0f;
    
}



@end
