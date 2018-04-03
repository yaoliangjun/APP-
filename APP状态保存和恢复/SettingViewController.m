//
//  SettingViewController.m
//  APP状态保存和恢复
//
//  Created by yaoliangjun on 2018/4/2.
//  Copyright © 2018年 Jerry Yao. All rights reserved.
//

#import "SettingViewController.h"

@interface SettingViewController ()

@end

@implementation SettingViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        // 经测试，Tabbar的title和image在MainTabBarController里面设置不会被保存恢复，故放到这里设置
        self.title = @"设置";
        self.tabBarItem.image = [UIImage imageNamed:@"home_transfer_normal"];
        self.tabBarItem.selectedImage = [[UIImage imageNamed:@"home_transfer_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

@end
