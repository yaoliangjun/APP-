//
//  BaseViewController.m
//  APP状态保存和恢复
//
//  Created by yaoliangjun on 2018/4/2.
//  Copyright © 2018年 Jerry Yao. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController () <UIViewControllerRestoration>

@end

@implementation BaseViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.restorationIdentifier = NSStringFromClass([self class]);
        self.restorationClass = [self class];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

// 对象再次恢复时调用该方法
+ (nullable UIViewController *)viewControllerWithRestorationIdentifierPath:(NSArray *)identifierComponents coder:(NSCoder *)coder
{
    NSLog(@"BaseViewController: %@", identifierComponents);
    UIViewController *vc = [[self alloc] init];
    vc.view.backgroundColor = [UIColor grayColor]; // 调试的背景颜色
    return vc;
}

@end
