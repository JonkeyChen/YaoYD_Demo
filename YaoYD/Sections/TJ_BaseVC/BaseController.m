//
//  BaseController.m
//  YaoYD
//
//  Created by Tianjian on 16/3/30.
//  Copyright © 2016年 oneyd.me. All rights reserved.
//

#import "BaseController.h"

@interface BaseController ()

@end

@implementation BaseController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setNavBarBackItem:YES];
}

- (void)setNavBarBackItem:(BOOL)show{
    //self.navigationController.navigationBar.barTintColor = [UIColor greenColor];
    //self.navigationController.navigationBar.translucent = NO;

    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    leftButton.frame = CGRectMake(0, 0, 30, 30);
    if (show) {
        [leftButton setImage:[UIImage imageNamed:@"iconfontMenuBack.jpg"] forState:UIControlStateNormal];
    } else {
        leftButton.userInteractionEnabled = NO;
        [leftButton setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    }

    [leftButton addTarget:self action:@selector(efOnClickNavBarBackItem:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftButton];
}
- (void)efOnClickNavBarBackItem:(UIButton*)item{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
