//
//  ShouldStoredViewController.m
//  APP状态保存和恢复
//
//  Created by yaoliangjun on 2018/3/30.
//  Copyright © 2018年 Jerry Yao. All rights reserved.
//

#import "ShouldStoredViewController.h"

static NSString * const kTextFieldTextKey = @"kTextFieldTextKey";

@interface ShouldStoredViewController () <UIAlertViewDelegate>

@property (nonatomic, strong) UITextField *textField;

@end

@implementation ShouldStoredViewController

// 归档保存数据
- (void)encodeRestorableStateWithCoder:(NSCoder *)coder
{
    [coder encodeObject:self.textField.text forKey:kTextFieldTextKey];
    [super encodeRestorableStateWithCoder:coder];
}

// 解档恢复数据
- (void)decodeRestorableStateWithCoder:(NSCoder *)coder
{
    self.textField.text = [coder decodeObjectForKey:kTextFieldTextKey];
    [super decodeRestorableStateWithCoder:coder];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = @"保存文本";
    self.view.backgroundColor = [UIColor whiteColor];

    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(50, 100, 200, 50)];
    textField.layer.borderColor = [UIColor blackColor].CGColor;
    textField.layer.borderWidth = 1;
    self.textField = textField;
    [self.view addSubview:textField];
}

@end
