//
//  NetService.h
//  YaoYD
//
//  Created by Tianjian on 16/3/31.
//  Copyright © 2016年 oneyd.me. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetService : NSObject

+ (instancetype)shareManger;


- (void)baseRequestWithUrl:(NSString*)url parm:(id)parm requestMethod:(NSString*)requetMethod success:(void(^)(id responseData))success failure:(void(^)(id responseData))failure;

@end
