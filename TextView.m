//
//  TextView.m
//  Weibo
//
//  Created by nero on 14-10-16.
//  Copyright (c) 2014年 姜沂. All rights reserved.
//

#import "TextView.h"

@interface TextView ()
@property(nonatomic ,weak  )UILabel     *placeholderLable;
@end

@implementation TextView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // 1.添加提示文字
        UILabel *placeholderLabel = [[UILabel alloc] init];
        placeholderLabel.textColor = [UIColor lightGrayColor];
        placeholderLabel.hidden = YES;
        placeholderLabel.numberOfLines = 0;
        placeholderLabel.backgroundColor = [UIColor clearColor];
        placeholderLabel.font = self.font;
        [self insertSubview:placeholderLabel atIndex:0];
        self.placeholderLable = placeholderLabel;
        
        // 2.监听textView文字改变的通知
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textDidChange) name:UITextViewTextDidChangeNotification object:self];
    }
    return self;
}
- (void)textDidChange
{
    self.placeholderLable.hidden = (self.text.length != 0);
}
- (void)setPlaceholder:(NSString *)placeholder
{
    _placeholder = [placeholder copy];
    self.placeholderLable.text = placeholder;
    if (placeholder.length>0) {
        self.placeholderLable.hidden = NO;
        
        // 计算frame
        CGFloat placeholderX = 5;
        CGFloat placeholderY = 7;
        CGFloat maxW = self.frame.size.width - 2 * placeholderX;
        CGFloat maxH = self.frame.size.height - 2 * placeholderY;
        CGSize placeholderSize = [placeholder sizeWithFont:self.placeholderLable.font constrainedToSize:CGSizeMake(maxW, maxH)];
        self.placeholderLable.frame = CGRectMake(placeholderX, placeholderY, placeholderSize.width, placeholderSize.height);

    }else
    {
        [self.placeholderLable setHidden:YES];
    }
}
- (void)setPlaceholderColor:(UIColor *)placeholderColor
{
    _placeholderColor = placeholderColor;
    
    self.placeholderLable.textColor = placeholderColor;

    
}
-(void)dealloc
{

    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


/**
 *  覆盖父类的方法
 *
 *  @param font <#font description#>
 */
- (void)setFont:(UIFont *)font
{
    [super setFont:font];
    
    self.placeholderLable.font = font;
    self.placeholder = self.placeholder;
}

@end
