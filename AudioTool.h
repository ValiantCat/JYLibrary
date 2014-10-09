//
//  AudioTool.h
//  JYLibrary
//
//  Created by nero on 14-10-9.
//  Copyright (c) 2014年 姜沂. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AudioTool : NSObject
/**
 *  播放音效
 *
 *  @param filename 音效文件名
 */
+(void)playSound:(NSString *)filename;

/**
 *  销毁音效
 *
 *  @param filename 音效文件名
 */
+(void)disposeSound:(NSString *)filename;
@end
