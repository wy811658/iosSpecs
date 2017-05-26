//
//  GTNetwork.m
//  GTUtils
//
//  Created by wangyong on 17/5/26.
//  Copyright © 2017年 wangyong. All rights reserved.
//

#import "GTNetwork.h"
#import "AFNetworking.h"

@implementation GTNetwork

- (void)getGithubReposForUser:(NSString*)user withSuccess:(void(^)(id responseObject))success failure:(void(^)(NSError*error))failure
{
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    
    NSURL *URL = [NSURL URLWithString:[NSString stringWithFormat:@"https://api.github.com/users/%@/repos", user]];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    
    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
        } else {
            NSLog(@"%@ %@", response, responseObject);
        }
    }];
    [dataTask resume];

}
- (void) test {
    [self getGithubReposForUser:@"wy811658" withSuccess:^(id responseObject) {
        NSLog(@"getGithubReposForUser response = %@",responseObject);
    } failure:^(NSError*error) {
        NSLog(@"getGithubReposForUser error = %@",error);
    }];
}
@end
