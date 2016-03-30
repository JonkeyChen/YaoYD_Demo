//
//  TJ_MineVC.m
//  YaoYD
//
//  Created by Tianjian on 16/3/30.
//  Copyright © 2016年 oneyd.me. All rights reserved.
//

#import "TJ_MineVC.h"
#import "PersonInfoVC.h"

@interface TJ_MineVC ()

@end

@implementation TJ_MineVC

- (void)viewWillAppear:(BOOL)animated{
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    self.navigationController.navigationBar.hidden = NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    PersonInfoVC *personInfoVC = [[PersonInfoVC alloc]init];
    [self.navigationController pushViewController:personInfoVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
