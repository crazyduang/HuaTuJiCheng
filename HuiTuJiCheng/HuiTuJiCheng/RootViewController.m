//
//  ViewController.m
//  HuiTuJiCheng
//
//  Created by admin on 16/9/20.
//  Copyright © 2016年 YL. All rights reserved.
//

#import "RootViewController.h"
#import "DetailViewController.h"


@interface RootViewController ()<UITableViewDelegate, UITableViewDataSource>

{
    NSArray *dataArray;
}

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
 
    /*
    // 添加NavigationBar
    UINavigationBar *navigationBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64)];
    UINavigationItem *navigationBarTitle = [[UINavigationItem alloc] initWithTitle:@"主题"];
    [navigationBar pushNavigationItem:navigationBarTitle animated:YES];
    navigationBar.barTintColor = [UIColor colorWithRed:200/255.0f green:38/255.0f  blue:39/255.0f alpha:1.0f];
    navigationBar.translucent = NO;  // 设置navbar是否透明  透明下面有黑线(导航条透明[yes]设置backgroundColor, 不透明[NO]设置barTintColor)
    [self.view addSubview:navigationBar];
    */

    self.navigationItem.title = @"主题";
//    self.navigationController.navigationBar.translucent = NO;
//    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:200/255.0f green:38/255.0f  blue:39/255.0f alpha:1.0f];
//    self.navigationController.navigationBar.backgroundColor = [UIColor colorWithRed:200/255.0f green:38/255.0f  blue:39/255.0f alpha:1.0f];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"red.jpg"] forBarMetrics:UIBarMetricsDefault];
    
    UIImageView *view = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64)];
    view.image = [UIImage imageNamed:@"red.jpg"];
    [self.view addSubview:view];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.height-100) style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    dataArray = @[@"折线图", @"树状图", @"饼图"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"CELL";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.textLabel.text = dataArray[indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"%@", dataArray[indexPath.row]);
    DetailViewController *detailVC = [[DetailViewController alloc] init];
    detailVC.titleText = dataArray[indexPath.row];
    [self.navigationController pushViewController:detailVC animated:YES];
//    [self presentViewController:detailVC animated:YES completion:nil];
    
}
- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"1%@", dataArray[indexPath.row]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
