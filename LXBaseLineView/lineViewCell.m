//
//  lineViewCell.m
//  LXBaseLineView
//
//  Created by 漫漫 on 2019/2/14.
//  Copyright © 2019 漫漫. All rights reserved.
//

#import "lineViewCell.h"
#import "linkModel.h"
#import "LXBaseLineView.h"
@interface lineViewCell()

@end
@implementation lineViewCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        
    }
    return self;
}
-(void)setModel:(Model *)model{
    _model = model;
    [self configUI];
}
-(void)configUI{
    
    
    for (LXBaseLineView *lineView in self.contentView.subviews) {
        [lineView removeFromSuperview];
    }
    LXBaseLineView *lastView = nil;
    
    for (linkModel *model in self.model.links) {
        
        LXBaseLineView *lineView =[[LXBaseLineView alloc]initWithLeftSpace:15 centerSpace:15 rightSpace:15 rightLabelLines:0 rightLabelTextAlignment:NSTextAlignmentLeft limitLeftWidth:70 limitHeight:0];
        [self.contentView addSubview:lineView];
        
        lineView.leftLabel.text = model.left;
        lineView.rightLabel.text = model.right;
        [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.mas_equalTo(0);
            if (!lastView) {
                 make.top.mas_equalTo(0);
            }else{
                make.top.mas_equalTo(lastView.mas_bottom).offset(10);
            }
        }];
        lastView = lineView;
    }
    [lastView mas_makeConstraints:^(MASConstraintMaker *make) {
       make.bottom.mas_equalTo(0) ;
    }];
}
@end
