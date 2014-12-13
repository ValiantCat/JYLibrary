//
//  JYNetworkTool.m
//  JYLibiary
//
//  Created by nero on 14/12/10.
//  Copyright (c) 2014年 nero. All rights reserved.
//

#import "JYNetworkTool.h"

@implementation JYNetworkTool
// 是否WIFI
+ (BOOL)isEnableWIFI {
    return ([[Reachability reachabilityForLocalWiFi] currentReachabilityStatus] != NotReachable);
}

// 是否3G
+ (BOOL)isEnable3G {
    return ([[Reachability reachabilityForInternetConnection] currentReachabilityStatus] != NotReachable);
}


@end
