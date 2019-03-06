//
//  ViewController.m
//  iOS帧动画Label Demo
//
//  Created by 萨缪 on 2019/3/5.
//  Copyright © 2019年 萨缪. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView * redView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    CABasicAnimation * animaiton = [CABasicAnimation animationWithKeyPath:@"position.y"];
    animaiton.duration = 1;
    animaiton.repeatCount = HUGE_VALF;
    animaiton.autoreverses = YES;
//    animaiton.repeatDuration = 5;
//    animaiton.fromValue = [NSValue valueWithCGPoint:CGPointMake(100, 100)];
    animaiton.toValue = [NSValue valueWithCGPoint:CGPointMake(100, 500)];
    animaiton.removedOnCompletion = NO;
    animaiton.fillMode = kCAFillModeForwards;
    [redView.layer addAnimation:animaiton forKey:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
