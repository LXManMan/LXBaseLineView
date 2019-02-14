//
//  LineViewController.m
//  LXBaseLineView
//
//  Created by 漫漫 on 2019/2/14.
//  Copyright © 2019 漫漫. All rights reserved.
//

#import "LineViewController.h"
#import "lineViewCell.h"
#import "Model.h"
@interface LineViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic ,strong)UITableView *tableView;
@property (nonatomic ,strong)NSMutableArray *dataA;

@end

@implementation LineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"lineView";
    [self.view addSubview:self.tableView];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    [self.dataA removeAllObjects];
    for (NSDictionary *dic in dict[@"data"]) {
        Model *model =[Model mj_objectWithKeyValues:dic];
        [self.dataA addObject:model];
    }
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.dataA.count;

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    lineViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"lineViewCell" forIndexPath:indexPath];
    cell.selectionStyle = 0;
    cell.model = self.dataA[indexPath.section];
    return cell;
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

-(UITableView *)tableView{
    if (!_tableView) {
        _tableView =[[UITableView alloc]initWithFrame:CGRectMake(0, NAVH, kScreenWidth, kScreenHeight - NAVH-30) style:UITableViewStyleGrouped];
        _tableView.delegate  = self;
        _tableView.dataSource = self;
        _tableView.estimatedSectionFooterHeight = 0;
        _tableView.estimatedSectionHeaderHeight = 20;
        _tableView.estimatedRowHeight = 200;
        _tableView.rowHeight = UITableViewAutomaticDimension;
        _tableView.tableFooterView = [UIView new];
        _tableView.showsVerticalScrollIndicator = YES;
        _tableView.showsHorizontalScrollIndicator = NO;
        _tableView.separatorStyle = 0 ;

        QYRegistCellClass(_tableView, @"lineViewCell");
    }
    return _tableView;
}
-(NSMutableArray *)dataA{
    if (!_dataA) {
        _dataA =[NSMutableArray array];
    }
    return _dataA;
}
@end

