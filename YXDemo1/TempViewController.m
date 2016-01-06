





//
//  TempViewController.m
//  YXDemo1
//
//  Created by k1er on 16/1/6.
//  Copyright © 2016年 Rudy. All rights reserved.
//

#import "TempViewController.h"
#import "Common.h"

@interface TempViewController ()
{
    CGFloat screenWidth;
    CGFloat screenHeight;
}
@end

@implementation TempViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self initData];
    [self initViews];
}

- (void)initData
{
    screenWidth = [UIScreen mainScreen].bounds.size.width;
    screenHeight = [UIScreen mainScreen].bounds.size.height;
}

- (void)initViews
{
    UIView *toolView = [[UIView alloc] initWithFrame:CGRectMake(0, screenHeight - 44, screenWidth, 44)];
    [toolView setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:toolView];
    UIButton *showBtn = [[UIButton alloc] initWithFrame:CGRectMake(10, 12, 120, 20)];
    [showBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [showBtn setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    [showBtn setTitle:@"显示窗口列表" forState:UIControlStateNormal];
    [showBtn addTarget:self action:@selector(showViewControllerList) forControlEvents:UIControlEventTouchUpInside];
    [toolView addSubview:showBtn];
}


- (void)showViewControllerList
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"showVCList" object:nil];
}
@end
