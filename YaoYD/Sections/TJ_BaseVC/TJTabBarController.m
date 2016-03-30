//
//  TJTabBarController.m
//  YaoYD
//
//  Created by Tianjian on 16/3/30.
//  Copyright © 2016年 oneyd.me. All rights reserved.
//

#import "TJTabBarController.h"
#import "TJ_StidumVC.h"
#import "TJ_CoachVC.h"
#import "TJ_EventVC.h"
#import "TJ_MineVC.h"

@interface TJTabBarController ()

@end

@implementation TJTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.hidesBottomBarWhenPushed = YES;
    self.tabBar.tintColor = [UIColor orangeColor];
    self.tabBar.translucent = NO;
    self.tabBar.tintColor = [UIColor colorWithRed:71/255.0 green:179/255.0 blue:90/255.0 alpha:1];

    
    NSArray<NSDictionary*> *arrItemProperty = @[@{@"title":@"场馆",@"image":@"tabBarNomarl_02@2x.png",@"selectedImage":@"tabBarPress_02@2x.png"},
                                                @{@"title":@"教练",@"image":@"tabBarNomarl_03@2x.png",@"selectedImage":@"tabBarPress_03@2x.png"},
                                                @{@"title":@"赛事",@"image":@"tabBarNomarl_05@2x.png",@"selectedImage":@"tabBarPress_05@2x.png"},
                                                @{@"title":@"我的",@"image":@"tabBarNomarl_04@2x.png",@"selectedImage":@"tabBarPress_04@2x.png"}];
    NSMutableArray<UITabBarItem*> *arrItems = [[NSMutableArray alloc]init];
    
    [arrItemProperty enumerateObjectsUsingBlock:^(NSDictionary * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        UITabBarItem *item = [[UITabBarItem alloc]initWithTitle:obj[@"title"]
                                                          image:[UIImage imageNamed:obj[@"image"]]
                                                  selectedImage:[UIImage imageNamed:@"selectedImage"]];
        [arrItems addObject:item];
    }];
    

    TJ_StidumVC *stidumVC = [[TJ_StidumVC alloc]init];
    stidumVC.tabBarItem   = arrItems[0];
    //UINavigationController *navCtrl01 = [[UINavigationController alloc]initWithRootViewController:stidumVC];
    
    TJ_CoachVC  *coachVC  = [[TJ_CoachVC alloc]init];
    coachVC.tabBarItem    = arrItems[1];
    //UINavigationController *navCtrl02 = [[UINavigationController alloc]initWithRootViewController:coachVC];
    
    TJ_EventVC  *eventVC  = [[TJ_EventVC alloc]init];
    eventVC.tabBarItem    = arrItems[2];
    //UINavigationController *navCtrl03 = [[UINavigationController alloc]initWithRootViewController:eventVC];
    
    TJ_MineVC   *mineVC   = [[TJ_MineVC alloc]init];
    mineVC.tabBarItem     = arrItems[3];
    //UINavigationController *navCtrl04 = [[UINavigationController alloc]initWithRootViewController:mineVC];
    
    //self.viewControllers  = @[navCtrl01,navCtrl02,navCtrl03,navCtrl04];
    self.viewControllers  = @[stidumVC,coachVC,eventVC,mineVC];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
