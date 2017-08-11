//
//  UIButton+LTType.m
//  LTButton
//
//  Created by liutong on 2017/8/11.
//  Copyright © 2017年 liutong. All rights reserved.
//

#import "UIButton+LTButtonType.h"

@implementation UIButton (LTButtonType)

- (void)setButtonType:(LTButtonType)type {
    [self layoutIfNeeded];
    CGRect titleFrame = self.titleLabel.frame;
    CGRect imageViewFrame = self.imageView.frame;
    float space = titleFrame.origin.x - imageViewFrame.origin.x - imageViewFrame.size.width;
    switch (type) {
        case LTButtonTypeTitleLeft:
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -(space + imageViewFrame.size.width), 0, space + imageViewFrame.size.width)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, space + titleFrame.size.width, 0, -(space + titleFrame.size.width))];
            break;
        case LTButtonTypeTitleBottom:
            [self setTitleEdgeInsets:UIEdgeInsetsMake(imageViewFrame.size.height + space, -(imageViewFrame.size.width), 0, 0)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, 0, titleFrame.size.height + space, -(titleFrame.size.width))];
            break;
        default:
            break;
    }
}
@end
