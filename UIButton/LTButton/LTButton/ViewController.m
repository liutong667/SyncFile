//
//  ViewController.m
//  LTButton
//
//  Created by liutong on 2017/8/10.
//  Copyright © 2017年 liutong. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+LTButtonType.h"

@interface ViewController ()
//@property (nonatomic, strong) UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(50, 50, 110, 40);
    button.backgroundColor = [UIColor blueColor];
    [button setImage:[UIImage imageNamed:@"original_selected"] forState:UIControlStateNormal];
    [button setTitle:@"默认样式" forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    UIButton *buttonLeft = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonLeft.frame = CGRectMake(50, 100, 110, 40);
    buttonLeft.backgroundColor = [UIColor blueColor];
//    [buttonLeft setButtonType:LTButtonTypeTitleLeft]; //写这里不行
    [buttonLeft setImage:[UIImage imageNamed:@"original_selected"] forState:UIControlStateNormal];
    [buttonLeft setTitle:@"标题在左" forState:UIControlStateNormal];
    [buttonLeft setButtonType:LTButtonTypeTitleLeft];
    [self.view addSubview:buttonLeft];
    
    UIButton *buttonBottom = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonBottom.frame = CGRectMake(50, 150, 80, 90);
    buttonBottom.backgroundColor = [UIColor blueColor];
    [buttonBottom setImage:[UIImage imageNamed:@"wechat_icon"] forState:UIControlStateNormal];
    [buttonBottom setTitle:@"标题在下" forState:UIControlStateNormal];
    [buttonBottom setButtonType:LTButtonTypeTitleBottom];
    [self.view addSubview:buttonBottom];
    NSString *str = @"汉子a";
    NSString *str2 = @"ab";
    NSLog(@"%d, %d",[self getToInt:str2],[self getToInt:str]);
    NSLog(@"%@, %@",str,str2);
    
    
}
-(int)convertToInt:(NSString*)strtemp
{
    int strlength = 0;
    char* p = (char*)[strtemp cStringUsingEncoding:NSUnicodeStringEncoding];
    for (int i=0 ; i<[strtemp lengthOfBytesUsingEncoding:NSUnicodeStringEncoding] ;i++) {
        if (*p) {
            p++;
            strlength++;
        }
        else {
            p++;
        }
    }
    return strlength;
}
-(int)getToInt:(NSString*)strtemp
{
    NSStringEncoding enc = CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000);
    NSData* da = [strtemp dataUsingEncoding:enc];
    return[da length];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
