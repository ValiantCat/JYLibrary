//
//  UIView+frame.h
//  JYLibrary
//
//  Created by nero on 14-10-26.
//  Copyright (c) 2014年 姜沂. All rights reserved.
//  快捷方式设置view的frame

#import <UIKit/UIKit.h>

@interface UIView (frame)
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGPoint origin;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@end
