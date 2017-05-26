//
//  GTNetwork.h
//  GTUtils
//
//  Created by wangyong on 17/5/26.
//  Copyright © 2017年 wangyong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GTNetwork : NSObject
/**
 *  获取github上用户的repo
 *
 *  @paramuser   用户名
 *  @paramsuccess成功的回调
 *  @paramfailure失败的回调
 */
- (void)getGithubReposForUser:(NSString*)user withSuccess:(void(^)(id responseObject))success failure:(void(^)(NSError*error))failure;
/**
 *  测试 getGithubReposForUser:withSuccess:failure的
 */
- (void)test;

@end
