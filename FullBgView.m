//
//  FullBgView.m
//  HardestGame
//
//  Created by nero on 14-7-25.
//  Copyright (c) 2014年 姜沂. All rights reserved.
//

#import "FullBgView.h"
@interface FullBgView ()
{
    NSString * _name;
}
@end
@implementation FullBgView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setFullscreenImageName:(NSString *)name
{
    
    _name = name;
    // 刷新
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    // 如果没有名称，直接返回
    if (!_name) return;
    
    // 1.加载图片
    UIImage *image = [UIImage imageNamed:_name];
    // 2 裁剪方法

    if (!iPhone5) {//注意这里是点坐标
        //iphone4s
          CGImageRef imageRef =  CGImageCreateWithImageInRect( image.CGImage, CGRectMake(0, 88, 640, 960));
        image = [UIImage imageWithCGImage:imageRef];
        
    }
    // 3.绘图
    [image drawInRect:rect];
}


@end
