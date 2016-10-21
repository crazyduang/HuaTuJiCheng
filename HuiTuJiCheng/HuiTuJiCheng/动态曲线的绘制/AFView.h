//
//  AFView.h
//  HuiTuJiCheng
//
//  Created by admin on 16/9/20.
//  Copyright © 2016年 YL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AFView : UIView


// 设置相关参数
@property (nonatomic, assign) CGFloat min_X;
@property (nonatomic, assign) CGFloat min_Y;
@property (nonatomic, assign) CGFloat max_X;
@property (nonatomic, assign) CGFloat max_Y;


// 数据数组
@property (nonatomic, strong) NSArray *data;
@property (nonatomic, strong) NSArray *x_labels;
@property (nonatomic, strong) NSArray *y_labels;




@end
