//
//  AppDelegate.m
//  APP状态保存和恢复
//
//  Created by yaoliangjun on 2018/3/30.
//  Copyright © 2018年 Jerry Yao. All rights reserved.
//

#import "AppDelegate.h"
#import "MainTabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

// 是否启用状态保存
- (BOOL)application:(UIApplication *)application shouldSaveApplicationState:(NSCoder *)coder{
    return YES;
}

// 是否启用应用恢复
- (BOOL)application:(UIApplication *)application shouldRestoreApplicationState:(NSCoder *)coder{
    return YES;
}

// 在恢复方法前调用
- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];

    MainTabBarController *mainTabBarVC = [[MainTabBarController alloc] init];
    mainTabBarVC.restorationIdentifier = NSStringFromClass([MainTabBarController class]);

    self.window.rootViewController = mainTabBarVC;
    [self.window makeKeyAndVisible];

    return YES;
}

@end
