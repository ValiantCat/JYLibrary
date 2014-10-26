//
//  UIImage+Color.h
//  JYLibrary
//
//  Created by nero on 14-10-26.
//  Copyright (c) 2014年 姜沂. All rights reserved.
//  获取图片中某个点的颜色

#import <UIKit/UIKit.h>

@interface UIImage (Color)
/**
 *  获得某个像素的颜色
 *
 *  @param point 像素点的位置
 */
- (UIColor *)pixelColorAtLocation:(CGPoint)point;
@end
