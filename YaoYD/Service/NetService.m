//
//  NetService.m
//  YaoYD
//
//  Created by Tianjian on 16/3/31.
//  Copyright © 2016年 oneyd.me. All rights reserved.
//

#import "NetService.h"


@implementation NetService

+ (instancetype)shareManger{
    static NetService *netService = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        netService = [[self alloc]init];
    });
    return netService;
}

- (void)baseRequestWithUrl:(NSString*)url parm:(id)parm requestMethod:(NSString*)requetMethod success:(void(^)(id responseData))success failure:(void(^)(id responseData))failure{
}

@end
