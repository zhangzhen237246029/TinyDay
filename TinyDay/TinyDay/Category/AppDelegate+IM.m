//
//  AppDelegate+IM.m
//  TRProject
//
//  Created by tarena31 on 16/7/21.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "AppDelegate+IM.h"
#import <AFNetworkActivityIndicatorManager.h>

@implementation AppDelegate (IM)
-(void)configApplication:(NSDictionary *)options{
    /******  显示状态栏  ******/
    [UIApplication sharedApplication].statusBarHidden = NO;
    
//    /******  环信sdk  ******/
//    EMOptions *emOptions = [EMOptions optionsWithAppkey:kEMKey];
//    emOptions.apnsCertName = @"";
//    [[EMClient sharedClient] initializeSDKWithOptions:emOptions];
    
    /******  Mob短信验证sdk  ******/
    [SMSSDK registerApp:kSMSKey withSecret:kSMSSecret];
    
    /******  右划返回  ******/
    [MLTransition validatePanBackWithMLTransitionGestureRecognizerType:MLTransitionGestureRecognizerTypeScreenEdgePan];
    
    /******  状态条显示AF请求状态提示  ******/
    [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
//        NSLog(@"%@", AFStringFromNetworkReachabilityStatus(status));
    }];
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
}

-(BOOL)isOnline{
    return [AFNetworkReachabilityManager sharedManager].networkReachabilityStatus == AFNetworkReachabilityStatusReachableViaWWAN || [AFNetworkReachabilityManager sharedManager].networkReachabilityStatus == AFNetworkReachabilityStatusReachableViaWiFi;
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
//    [[EMClient sharedClient] applicationDidEnterBackground:application];
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
//    [[EMClient sharedClient] applicationWillEnterForeground:application];
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end
