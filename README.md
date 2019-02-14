# LXBaseLineView
![image](https://github.com/liuxinixn/LXBaseLineView/blob/master/lineView.gif)
```
/**
 * 左侧间距 leftSpace
 * 左右文本间距 centerSpace
 * 右侧间距 rightSpace
 * 右侧文本 NumberOfLines
 * 右侧文本对齐方式 rightLabelTextAlignment
 * 右侧文本对齐方式 rightLabelTextAlignment
 * 是否限制高度 limitHeight 0，不限制 ，如果限制高度，那么居中对齐。
 * 左侧文本限制是否限制宽度
 */
@interface LXBaseLineView : UIView
-(instancetype)initWithLeftSpace:(CGFloat)leftSpace centerSpace:(CGFloat)centerSpace rightSpace:(CGFloat)rightSpace rightLabelLines:(NSInteger)rightNumberOfLines rightLabelTextAlignment:(NSTextAlignment)rightLabelTextAlignment limitLeftWidth:(CGFloat)limitLeftWidth limitHeight:(CGFloat)limitHeight;

@property (nonatomic ,strong)UILabel *leftLabel;
@property (nonatomic ,strong)UILabel *rightLabel;
```
