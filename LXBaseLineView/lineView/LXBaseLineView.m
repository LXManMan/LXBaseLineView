//
//  LXBaseLineView.m
//  TestDemo
//
//  Created by 漫漫 on 2019/2/13.
//  Copyright © 2019 万众创新. All rights reserved.
//

#import "LXBaseLineView.h"
@interface LXBaseLineView()
@property (nonatomic ,assign)CGFloat leftSpace;
@property (nonatomic ,assign)CGFloat centerSpace;
@property (nonatomic ,assign)CGFloat rightSpace;
@property (nonatomic ,assign)CGFloat limitHeight;
@property (nonatomic ,assign)CGFloat limitLeftWidth;

@end
@implementation LXBaseLineView
//-(void)dealloc{
//    NSLog(@"%@",self.class);
//}
-(instancetype)initWithLeftSpace:(CGFloat)leftSpace centerSpace:(CGFloat)centerSpace rightSpace:(CGFloat)rightSpace rightLabelLines:(NSInteger)rightNumberOfLines rightLabelTextAlignment:(NSTextAlignment)rightLabelTextAlignment limitLeftWidth:(CGFloat)limitLeftWidth limitHeight:(CGFloat)limitHeight{
    self = [super init];
    if (self) {
        
        self.leftSpace = leftSpace;
        self.centerSpace = centerSpace;
        self.rightSpace = rightSpace;
        self.rightLabel.numberOfLines = rightNumberOfLines;
        self.rightLabel.textAlignment  = rightLabelTextAlignment;
        self.limitLeftWidth = limitLeftWidth;
        self.limitHeight = limitHeight;
        [self initilize];
    }
    return self;


}
-(instancetype)init{
    self = [super init];
    if (self) {
        
        self.leftSpace = 15;
        self.centerSpace = 15;
        self.rightSpace = 15;
        self.limitHeight = 0;
        self.limitLeftWidth = 0;
        [self initilize];
        

    }
    return self;
}
-(void)initilize{
    
    
    [self addSubview:self.leftLabel];
    [self addSubview:self.rightLabel];
    
    [self.leftLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.mas_equalTo(self.leftSpace);
        //如果有限制高度 那么居中对齐
        if (self.limitHeight) {
        
            make.centerY.mas_equalTo(0);
        }else{
            
            make.top.mas_equalTo(0);
        }
        
        //如果限制了左侧宽度
        if (self.limitLeftWidth) {
            make.width.mas_equalTo(@(self.limitLeftWidth));
        }
        
    }];
    
   
    
    
    [self.rightLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.right.mas_equalTo(-self.rightSpace);
       
        make.left.mas_equalTo(self.leftLabel.mas_right).offset(self.centerSpace);
        
        
        //如果有限制高度 那么居中对齐
        if (self.limitHeight) {
            
            make.centerY.mas_equalTo(0);
            make.height.lessThanOrEqualTo(@(self.limitHeight));
        }else{
            
            make.top.mas_equalTo(0);
        }

    }];
    
    //当没有设置左文本最大宽度的时候左侧文本设置抗拉伸
    if (!self.limitLeftWidth) {
        [self.leftLabel setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
        [self.rightLabel setContentCompressionResistancePriority:UILayoutPriorityDefaultLow forAxis:UILayoutConstraintAxisHorizontal];
    }
    
    [self.leftLabel setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
    [self.rightLabel setContentHuggingPriority:UILayoutPriorityDefaultLow forAxis:UILayoutConstraintAxisHorizontal];
    
    [self mas_makeConstraints:^(MASConstraintMaker *make) {
        
        //如果有限制高度
        if (self.limitHeight) {
            make.height.mas_equalTo(self.limitHeight);
        }else{
            make.bottom.mas_equalTo(self.rightLabel.mas_bottom);
            make.height.mas_greaterThanOrEqualTo(self.leftLabel.mas_height);
        }
       
    }];
    
}
//明细名称
-(UILabel *)leftLabel{
    if (!_leftLabel) {
        _leftLabel = [[UILabel alloc]init];
        _leftLabel.textColor  = [UIColor blackColor];
        _leftLabel.textAlignment = NSTextAlignmentLeft;
        _leftLabel.numberOfLines = 1;
        _leftLabel.text  = @"商品总价";
        
    }
    return _leftLabel;
}
//明细名称
-(UILabel *)rightLabel{
    if (!_rightLabel) {
        _rightLabel = [[UILabel alloc]init];
        _rightLabel.textColor  = UIColorHexFromRGB(0x666666);
        _rightLabel.textAlignment = NSTextAlignmentLeft;
        _rightLabel.numberOfLines = 0;
        _rightLabel.text  = @"¥ 60.00";

    }
    return _rightLabel;
}
@end
