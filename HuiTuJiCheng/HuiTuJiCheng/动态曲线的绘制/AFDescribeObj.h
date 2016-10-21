//
//  AFDescribeObj.h
//  HuiTuJiCheng
//   各种曲线折线的绘制
//  Created by admin on 16/9/20.
//  Copyright © 2016年 YL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum{
    AFAnimationStroKeEnd = 0
} AFAnimationType;


@interface AFDescribeObj : NSObject<CAAnimationDelegate>

@property (nonatomic, weak) UIView *containerView;
@property (nonatomic) AFAnimationType type;
@property (nonatomic, strong) NSArray *shapeLayers;
@property (nonatomic, strong) CABasicAnimation *basicAnimation;

- (id)initWithType:(AFAnimationType)af_type inView:(UIView *)view;

- (void)setStartTime:(CGFloat)af_startTime andDuration:(CGFloat)af_duration;    // 设置起始时间
- (void)addLineFrom:(CGPoint)from toPoint:(CGPoint)to color:(UIColor *)color;   // 添加线



@end
