//
//  UIImage+WaterImage.h
//  JYLibrary
//
//  Created by nero on 14-8-13.
//  Copyright (c) 2014年 姜沂. All rights reserved.
//  返回一个带有水印的图片

#import <UIKit/UIKit.h>

@interface UIImage (WaterImage)
/**
 *  打水印
 *
 *  @param bg   背景图片
 *  @param logo 右下角的水印图片
 */
+ (instancetype)waterImageWithBg:(NSString *)bg logo:(NSString *)logo;
@end
