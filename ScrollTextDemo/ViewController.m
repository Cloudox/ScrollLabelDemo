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
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, 200, 20)];
    label.text = @"cloudox";
    [self.view addSubview:label];
    
    CGRect frame = label.frame;
    frame.origin.x = 0;
    label.frame = frame;
    
    
    [UIView beginAnimations:@"testAnimation" context:NULL];
    [UIView setAnimationDuration:5.0f];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationRepeatAutoreverses:NO];
    [UIView setAnimationRepeatCount:999999];
    
    
    frame = label.frame;
    frame.origin.x = 200;
    label.frame = frame;
    [UIView commitAnimations];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
