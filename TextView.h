//
//  TextView.h
//  Weibo
//
//  Created by nero on 14-10-16.
//  Copyright (c) 2014年 姜沂. All rights reserved.
//    自定义带有placeholder的textView


#import <UIKit/UIKit.h>

@interface TextView : UITextView
@property(nonatomic ,copy) NSString  *placeholder;
@property (nonatomic, strong) UIColor *placeholderColor;
@end
