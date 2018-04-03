//
//  MainTabBarController.m
//  APP状态保存和恢复
//
//  Created by yaoliangjun on 2018/4/2.
//  Copyright © 2018年 Jerry Yao. All rights reserved.
//

#import "MainTabBarController.h"
#import "HomeViewController.h"
#import "SettingViewController.h"
#import "BaseNavigationViewController.h"

@interface MainTabBarController () 

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupChildViewController];
}

- (void)setupChildViewController
{
    HomeViewController *homeVC = [[HomeViewController alloc] init];
    [self addSubViewController:homeVC];

    SettingViewController *settingVC = [[SettingViewController alloc] init];
    [self addSubViewController:settingVC];
}

- (void)addSubViewController:(UIViewController *)childController
{
    BaseNavigationViewController *nav = [[BaseNavigationViewController alloc] initWithRootViewController:childController];
    nav.restorationIdentifier = NSStringFromClass([BaseNavigationViewController class]);
    [self addChildViewController:nav];
}

@end
