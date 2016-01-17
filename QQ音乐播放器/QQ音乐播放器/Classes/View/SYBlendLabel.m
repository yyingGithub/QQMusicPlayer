//
//  SYBlendLabel.m
//  QQ音乐播放器
//
//  Created by 申颖 on 16/1/15.
//  Copyright © 2016年 Ying. All rights reserved.
//

#import "SYBlendLabel.h"

@implementation SYBlendLabel


- (void)setProgress:(CGFloat)progress
{
    _progress = progress;
    
    // 重新绘图
    [self setNeedsDisplay];
}


- (void)drawRect:(CGRect)rect {
    
    //1. 调用父类 --> 绘制文字
    [super drawRect:rect];
    
    //2. 设置颜色
    [[UIColor greenColor] set];
    
    //3. 设置混合模式
    rect.size.width *= self.progress;
    //CGBlendMode: PS
    UIRectFillUsingBlendMode(rect, kCGBlendModeSourceIn);
}

@end
