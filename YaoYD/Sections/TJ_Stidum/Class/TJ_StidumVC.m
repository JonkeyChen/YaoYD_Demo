//
//  TJ_StidumVC.m
//  YaoYD
//
//  Created by Tianjian on 16/3/30.
//  Copyright © 2016年 oneyd.me. All rights reserved.
//

#import "TJ_StidumVC.h"
#import "PaintCodeTutorial.h"
#import "WatchHand.h"
#import "Watch.h"

@interface TJ_StidumVC (){
    WatchHand *hand;
}

@end

@implementation TJ_StidumVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setNavBarBackItem:NO];
    
    Watch *watch = [[Watch alloc]init];
    watch.backgroundColor = [UIColor whiteColor];
    watch.frame = CGRectMake(30, 80, 250, 250);
    [self.view addSubview:watch];
    
    hand = [[WatchHand alloc]init];
    hand.backgroundColor = [UIColor clearColor];
    hand.frame  = CGRectMake(30, 80+50, 200, 200);
    hand.centerX = watch.centerX;
    hand.centerY = watch.centerY+15;
    [self.view addSubview:hand];
    
    [self rotateStopWatchHand];
}

- (void)rotateStopWatchHand{
    [UIView animateWithDuration:2.0 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        hand.transform = CGAffineTransformRotate(hand.transform, M_PI_2);
    } completion:^(BOOL finished) {
        [self rotateStopWatchHand];
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
