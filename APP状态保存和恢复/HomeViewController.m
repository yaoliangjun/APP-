//
//  HomeViewController.m
//  APP状态保存和恢复
//
//  Created by yaoliangjun on 2018/4/2.
//  Copyright © 2018年 Jerry Yao. All rights reserved.
//

#import "HomeViewController.h"
#import "ShouldStoredViewController.h"

@interface HomeViewController ()
// <UIViewControllerRestoration>
@end

@implementation HomeViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        // 经测试，Tabbar的title和image在MainTabBarController里面设置不会被保存恢复，故放到这里设置
        self.title = @"首页";
        self.tabBarItem.image = [UIImage imageNamed:@"home_home_normal"];
        self.tabBarItem.selectedImage = [[UIImage imageNamed:@"home_home_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    // 按钮
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    btn.backgroundColor = [UIColor orangeColor];
    [btn setTitle:@"跳转" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)push
{
    ShouldStoredViewController *vc = [[ShouldStoredViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
