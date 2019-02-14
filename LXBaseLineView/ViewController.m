//
//  ViewController.m
//  LXBaseLineView
//
//  Created by 漫漫 on 2019/2/14.
//  Copyright © 2019 漫漫. All rights reserved.
//

#import "ViewController.h"
#import "LXBaseLineView.h"
#import "LineViewController.h"
@interface ViewController ()
@property (nonatomic ,strong)LXBaseLineView *lineView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor  = [UIColor whiteColor];
    
    self.lineView = [[LXBaseLineView alloc]initWithLeftSpace:15 centerSpace:15 rightSpace:15 rightLabelLines:0 rightLabelTextAlignment:NSTextAlignmentRight limitLeftWidth:0 limitHeight:0];
    [self.view addSubview:self.lineView];
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(100);
    }];
    self.lineView.backgroundColor = [UIColor redColor];
    
}

//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    self.lineView.rightLabel.text = @"从小就安静个人阿嘎人力噶如何敢啊噶哈哈哈阿花花还是噶而过就阿尔噶果然高哈尔监管局阿热加工案件高二个人噶尔加";
//    self.lineView.leftLabel.text = @"机票";
//
//}
-(void)reset{
    if (self.lineView) {
        [self.lineView removeFromSuperview];
        self.lineView = nil;
    }
}
- (IBAction)onlyLine1:(id)sender {
    
    [self reset];
    self.lineView = [[LXBaseLineView alloc]initWithLeftSpace:15 centerSpace:15 rightSpace:15 rightLabelLines:1 rightLabelTextAlignment:NSTextAlignmentRight limitLeftWidth:0 limitHeight:0];
    [self.view addSubview:self.lineView];
    
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(100);
    }];
    
    
    self.lineView.rightLabel.text = @"从小就安静个人阿嘎人力噶如何敢啊噶哈哈哈阿花花还是噶而过就阿尔噶果然高哈尔监管局阿热加工案件高二个人噶尔加";
    self.lineView.backgroundColor = [UIColor orangeColor];
}

- (IBAction)nolimitRightLabel:(id)sender {
    
     [self reset];
    self.lineView = [[LXBaseLineView alloc]initWithLeftSpace:15 centerSpace:15 rightSpace:15 rightLabelLines:0 rightLabelTextAlignment:NSTextAlignmentRight limitLeftWidth:0 limitHeight:0];
    [self.view addSubview:self.lineView];
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(100);
    }];
    self.lineView.rightLabel.text = @"从小就安静个人阿嘎人力噶如何敢啊噶哈哈哈阿花花还是噶而过就阿尔噶果然高哈尔监管局阿热加工案件高二个人噶尔加";
    self.lineView.backgroundColor = [UIColor orangeColor];
}
- (IBAction)rightChangeFont:(id)sender {
     [self reset];
    
    self.lineView = [[LXBaseLineView alloc]initWithLeftSpace:15 centerSpace:15 rightSpace:15 rightLabelLines:0 rightLabelTextAlignment:NSTextAlignmentRight limitLeftWidth:0 limitHeight:0];
    [self.view addSubview:self.lineView];
    self.lineView.rightLabel.font = [UIFont systemFontOfSize:18];
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(100);
    }];
    self.lineView.rightLabel.text = @"从小就安静个人阿嘎人力噶如何敢啊噶哈哈哈阿花花还是噶而过就阿尔噶果然高哈尔监管局阿热加工案件高二个人噶尔加";
    self.lineView.backgroundColor = [UIColor orangeColor];
}
- (IBAction)limitHeight:(id)sender {
     [self reset];
    self.lineView = [[LXBaseLineView alloc]initWithLeftSpace:15 centerSpace:15 rightSpace:15 rightLabelLines:0 rightLabelTextAlignment:NSTextAlignmentRight limitLeftWidth:0 limitHeight:60];
    [self.view addSubview:self.lineView];
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(100);
    }];
    self.lineView.rightLabel.text = @"从小就安静个人阿嘎人力噶如何敢啊噶哈哈哈阿花花还是噶而过就阿尔噶果然高哈尔监管局阿热加工案件高二个人噶尔加";
    self.lineView.backgroundColor = [UIColor redColor];
}
- (IBAction)limitLeftSpace:(id)sender {
     [self reset];
    self.lineView = [[LXBaseLineView alloc]initWithLeftSpace:30 centerSpace:15 rightSpace:15 rightLabelLines:0 rightLabelTextAlignment:NSTextAlignmentRight limitLeftWidth:0 limitHeight:0];
    [self.view addSubview:self.lineView];
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(100);
    }];
    self.lineView.rightLabel.text = @"从小就安静个人阿嘎人力噶如何敢啊噶哈哈哈阿花花还是噶而过就阿尔噶果然高哈尔监管局阿热加工案件高二个人噶尔加";
    self.lineView.backgroundColor = [UIColor orangeColor];
}
- (IBAction)limitRightSpace:(id)sender {
    [self reset];

    self.lineView = [[LXBaseLineView alloc]initWithLeftSpace:15 centerSpace:15 rightSpace:30 rightLabelLines:0 rightLabelTextAlignment:NSTextAlignmentRight limitLeftWidth:0 limitHeight:0];
    [self.view addSubview:self.lineView];
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(100);
    }];
    self.lineView.rightLabel.text = @"从小就安静个人阿嘎人力噶如何敢啊噶哈哈哈阿花花还是噶而过就阿尔噶果然高哈尔监管局阿热加工案件高二个人噶尔加";
    self.lineView.backgroundColor = [UIColor orangeColor];
}
- (IBAction)limitCenterSpace:(id)sender {
    [self reset];

    self.lineView = [[LXBaseLineView alloc]initWithLeftSpace:15 centerSpace:30 rightSpace:15 rightLabelLines:0 rightLabelTextAlignment:NSTextAlignmentRight limitLeftWidth:0 limitHeight:0];
    [self.view addSubview:self.lineView];
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(100);
    }];
    self.lineView.rightLabel.text = @"从小就安静个人阿嘎人力噶如何敢啊噶哈哈哈阿花花还是噶而过就阿尔噶果然高哈尔监管局阿热加工案件高二个人噶尔加";
    self.lineView.backgroundColor = [UIColor orangeColor];
}
- (IBAction)limitLeftWidth:(id)sender {
    [self reset];

    self.lineView = [[LXBaseLineView alloc]initWithLeftSpace:15 centerSpace:15 rightSpace:15 rightLabelLines:0 rightLabelTextAlignment:NSTextAlignmentRight limitLeftWidth:75 limitHeight:0];
    [self.view addSubview:self.lineView];
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(100);
    }];
    self.lineView.leftLabel.text = @"刚刚";
    self.lineView.rightLabel.text = @"从小就安静个人阿嘎人力噶如何敢啊噶哈哈哈阿花花还是噶而过就阿尔噶果然高哈尔监管局阿热加工案件高二个人噶尔加";
    self.lineView.backgroundColor = [UIColor orangeColor];
}
- (IBAction)rightAligment:(id)sender {
    [self reset];

    self.lineView = [[LXBaseLineView alloc]initWithLeftSpace:15 centerSpace:15 rightSpace:15 rightLabelLines:0 rightLabelTextAlignment:NSTextAlignmentRight limitLeftWidth:0 limitHeight:0];
    [self.view addSubview:self.lineView];
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(100);
    }];
    self.lineView.rightLabel.text = @"从小就安静个人阿嘎人力噶如何敢啊噶哈哈哈阿花花还是噶而过就阿尔噶果然高哈尔监管局阿热加工案件高二个人噶尔加";
    self.lineView.backgroundColor = [UIColor orangeColor];
}
- (IBAction)leftAligment:(id)sender {
    [self reset];

    self.lineView = [[LXBaseLineView alloc]initWithLeftSpace:15 centerSpace:15 rightSpace:15 rightLabelLines:0 rightLabelTextAlignment:NSTextAlignmentLeft limitLeftWidth:0 limitHeight:0];
    [self.view addSubview:self.lineView];
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(100);
    }];
    self.lineView.rightLabel.text = @"从小就安静个人阿嘎人力噶如何敢啊噶哈哈哈阿花花还是噶而过就阿尔噶果然高哈尔监管局阿热加工案件高二个人噶尔加";
    self.lineView.backgroundColor = [UIColor orangeColor];
}
- (IBAction)showInCell:(id)sender {
    
    LineViewController *vc =[[LineViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
@end
