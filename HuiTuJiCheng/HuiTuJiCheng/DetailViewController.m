//
//  DetailViewController.m
//  HuiTuJiCheng
//
//  Created by admin on 16/9/23.
//  Copyright © 2016年 YL. All rights reserved.
//

#import "DetailViewController.h"
#import "PNChart.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    if ([_titleText isEqualToString:@"折线图"]) {
        [self setLineChart];
    } else if ([_titleText isEqualToString:@"饼图"]) {
        [self setPieChart];
    } else if ([_titleText isEqualToString:@"树状图"]) {
        [self setTreeChart];
    }
    
}

// 折线图
- (void)setLineChart{
    PNLineChart * lineChart = [[PNLineChart alloc]initWithFrame:CGRectMake(0,135.0,300,200.0)];
    //X轴数据
    [lineChart setXLabels:@[@"9.23",@"9.26",@"9.27",@"9.28",@"9.29"]];
    [lineChart setYLabels:@[@"30", @"60", @"90", @"120", @"150", @"180"]];
    //Y轴数据
    NSArray * data01Array =@[@30, @60, @90, @120, @150];
    PNLineChartData *data01 = [PNLineChartData new];
    data01.color = PNFreshGreen;
    data01.itemCount = lineChart.xLabels.count;
    data01.getData = ^PNLineChartDataItem *(NSUInteger index) {
        CGFloat yValue = [data01Array[index] floatValue];
        NSLog(@"yValue1 == %f", yValue);
        return [PNLineChartDataItem dataItemWithY:yValue];
    };
    
    //可以添加多条折线
    NSArray * data02Array =@[@150,@30,@120,@90,@60];
    PNLineChartData *data02 = [PNLineChartData new];
    data02.color = PNTwitterColor;
    data02.itemCount = lineChart.xLabels.count;
    data02.getData = ^PNLineChartDataItem *(NSUInteger index) {
        CGFloat yValue = [data02Array[index] floatValue];
        NSLog(@"yValue2 == %f", yValue);
        return [PNLineChartDataItem dataItemWithY:yValue];
    };
    lineChart.chartData = @[data01, data02];
    [lineChart strokeChart];
    //加载在视图上
    [self.view addSubview:lineChart];
}


// 饼图
- (void)setPieChart{
    
}


// 树状图
- (void)setTreeChart{
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
