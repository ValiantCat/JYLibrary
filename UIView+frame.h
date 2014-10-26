//
//  UIView+frame.h
//  JYLibrary
//
//  Created by nero on 14-10-26.
//  Copyright (c) 2014年 姜沂. All rights reserved.
//  快捷方式设置view的frame

#import <UIKit/UIKit.h>

@interface UIView (frame)
@property (assign, nonatomic) CGFloat x;
@property (assign, nonatomic) CGFloat y;
@property (assign, nonatomic) CGFloat width;
@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) CGSize size;
@property (assign, nonatomic) CGPoint origin;
@end
