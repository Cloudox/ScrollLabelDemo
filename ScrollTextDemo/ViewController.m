//
//  ViewController.m
//  ScrollTextDemo
//
//  Created by csdc-iMac on 16/1/28.
//  Copyright (c) 2016年 Cloudox. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(50, 100, 200, 20)];
//    contentView.backgroundColor = [UIColor lightGrayColor];
//    [self.view addSubview:contentView];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 300, 20)];
    label.text = @"cloudox";
    [self.view addSubview:label];
    
//    CGRect frame = label.frame;
//    frame.origin.x = 0;
//    label.frame = frame;
    
    
//    [UIView beginAnimations:@"testAnimation" context:NULL];
//    [UIView setAnimationDuration:5.0f];
//    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
//    [UIView setAnimationDelegate:self];
//    [UIView setAnimationRepeatAutoreverses:NO];
//    [UIView setAnimationRepeatCount:999999];
//    
//    
//    frame = label.frame;
//    frame.origin.x = 200;
//    label.frame = frame;
//    [UIView commitAnimations];
    
    label.text = @"iphone UILable跑马灯效果实现";
    CGRect frame = label.frame;
    
    // 获取尺寸
//    CGSize dims = [label.text sizeWithFont:label.font];// iOS 7以后被废弃
    
    // 根据字体得到NSString的尺寸（iOS 7及以后）
    CGSize dims = [label.text sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:label.font, NSFontAttributeName, nil]];
    
    frame.origin.x = 320;      //设置起点
    [label setFrame:CGRectMake(frame.origin.x, frame.origin.y, dims.width, dims.height)];
    [UIView beginAnimations:@"testAnimation" context:NULL];
    [UIView setAnimationDuration:5.0f];     //动画执行时间
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationRepeatAutoreverses:NO];
    [UIView setAnimationRepeatCount:999999]; // 动画执行次数
    
    frame = label.frame;
    frame.origin.x = -dims.width;   //设置终点
    label.frame = frame;
    [UIView commitAnimations];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
