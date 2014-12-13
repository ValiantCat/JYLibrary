//
//  JYNetworkTest.m
//  JYLibiary
//
//  Created by nero on 14/12/10.
//  Copyright (c) 2014年 nero. All rights reserved.
//

#import "JYNetworkTest.h"
#import "JYNetworkTool.h"
#import "Reachability.h"
@interface JYNetworkTest ()
@property (nonatomic, strong) Reachability *reachability;
@end


@implementation JYNetworkTest


- (void)viewDidLoad
{
    // 监听网络状态发生改变的通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(networkStateChange) name:kReachabilityChangedNotification object:nil];
    
    // 获得Reachability对象
    self.reachability = [Reachability reachabilityForInternetConnection];
    // 开始监控网络
    [self.reachability startNotifier];
    
    
    
//     主动询问网络状态
    //    // 1.获得Reachability对象
    //    Reachability *wifi = [Reachability reachabilityForLocalWiFi];
    //
    //    // 2.获得Reachability对象的当前网络状态
    //    NetworkStatus wifiStatus = wifi.currentReachabilityStatus;
    //    if (wifiStatus != NotReachable) {
    //        NSLog(@"是WIFI");
    //    }
}
- (void)dealloc
{
    [self.reachability stopNotifier];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)networkStateChange
{
    NSLog(@"网络状态改变了");
    [self checkNetworkState];
}
/**
 *  监测网络状态
 */
- (void)checkNetworkState
{
    if ([JYNetworkTool isEnableWIFI]) {
        NSLog(@"WIFI环境");
    } else if ([JYNetworkTool isEnable3G]) {
        NSLog(@"手机自带网络");
    } else {
        NSLog(@"没有网络");
    }
}



@end
