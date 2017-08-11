//
//  UIButton+LTType.h
//  LTButton
//
//  Created by liutong on 2017/8/11.
//  Copyright © 2017年 liutong. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, LTButtonType) {
    LTButtonTypeTitleLeft = 0,
    LTButtonTypeTitleBottom,
};

@interface UIButton (LTButtonType)

- (void)setButtonType:(LTButtonType)type;

@end
