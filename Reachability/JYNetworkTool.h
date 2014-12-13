//
//  JYNetworkTool.h
//  JYLibiary
//
//  Created by nero on 14/12/10.
//  Copyright (c) 2014年 nero. All rights reserved.
//  检测网络状况的工具类

#import <Foundation/Foundation.h>
#import "Reachability.h"


#warning Reachability 是非arc的  在  build phases  加上编译参数  -fno-objc-arc
@interface JYNetworkTool : NSObject

/**
 *  是否WIFI
 */
+ (BOOL)isEnableWIFI;

/**
 *  是否3G
 */
+ (BOOL)isEnable3G;

@end
