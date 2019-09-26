//
//  UnderlineButton.h
//  Driver
//
//  Created by 刘彬 on 2019/5/9.
//  Copyright © 2019 BIN. All rights reserved.
//  系统下划线太和文字贴的太紧，故自定义控件

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LBUnderlineButton : UIButton
@property (nonatomic,assign)CGFloat lineSpacing;//default 0.f
@property (nonatomic,assign)CGFloat lineHeight;//default 0.5f
@property (nonatomic,assign)CGFloat lineWidth;//default 0.0f,根据title自适应长短，如果设值，将利用设值
@property (nonatomic,strong)UIColor *lineColor;//设置lineColor了之后线条颜色将不变，如果不设置，线条颜色跟着==currentTitleColor
@end

NS_ASSUME_NONNULL_END
