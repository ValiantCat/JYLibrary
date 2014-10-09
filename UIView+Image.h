//
//  UIView+Image.h
//  HardestGame
//
//  Created by nero on 14-8-13.
//  Copyright (c) 2014年 姜沂. All rights reserved.
//  扩展分类 为了view不强转

#import <UIKit/UIKit.h>

@interface UIView (Image)
// 设置全屏显示的图片名称
- (void)setFullscreenImageName:(NSString *)name;
// 清除锯齿
- (void)clearAlias;
@end
