//
//  UnderlineButton.m
//  Driver
//
//  Created by 刘彬 on 2019/5/9.
//  Copyright © 2019 BIN. All rights reserved.
//  系统下划线太和文字贴的太紧，故自定义控件

#import "LBUnderlineButton.h"
@interface LBUnderlineButton()
@property (nonatomic,strong)UIView *underlineView;
@end
@implementation LBUnderlineButton

- (instancetype)init
{
    return [[self.class alloc] initWithFrame:CGRectZero];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _lineHeight = 0.5;
        [self.titleLabel addObserver:self forKeyPath:NSStringFromSelector(@selector(frame)) options:NSKeyValueObservingOptionNew context:nil];
        _underlineView = [[UIView alloc] init];
        [self addSubview:_underlineView];
    }
    return self;
}
-(void)setLineColor:(UIColor *)lineColor{
    _lineColor = lineColor;
    _underlineView.backgroundColor = lineColor;
}
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    if ([object isEqual:self.titleLabel] && [keyPath isEqualToString:NSStringFromSelector(@selector(frame))]) {
        if (!_lineColor) {
            _underlineView.backgroundColor = [self currentTitleColor];
        }
        
        _underlineView.frame = CGRectMake(self.titleLabel.center.x-CGRectGetWidth(self.titleLabel.frame)/2, CGRectGetMaxY(self.titleLabel.frame)+_lineSpacing, CGRectGetWidth(self.titleLabel.frame), _lineHeight);
    }
}

-(void)setLineHeight:(CGFloat)lineHeight{
    _lineHeight = lineHeight;
    [self observeValueForKeyPath:NSStringFromSelector(@selector(frame)) ofObject:self.titleLabel change:nil context:nil];
}

-(void)setSelected:(BOOL)selected{
    [super setSelected:selected];
    
}


-(void)setTitleColor:(UIColor *)color forState:(UIControlState)state{
    [super setTitleColor:color forState:state];
    if (!_lineColor) {
        _underlineView.backgroundColor = [self currentTitleColor];
    }
}

-(void)dealloc{
    [self.titleLabel removeObserver:self forKeyPath:NSStringFromSelector(@selector(frame))];
}
@end
