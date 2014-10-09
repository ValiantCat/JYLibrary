//
//  UIImage+Fit.h
//  SinaWeibo
//
//  Created by nero on 14-8-13.
//  Copyright (c) 2014年 姜沂. All rights reserved.
//   拉伸图片

#import <UIKit/UIKit.h>

@interface UIImage (Fit)
#pragma mark 返回拉伸好的图片
+ (UIImage *)resizeImage:(NSString *)imgName;

- (UIImage *)resizeImage;
@end
