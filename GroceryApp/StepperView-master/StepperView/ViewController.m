//
//  ViewController.m
//  StepperView
//
//  Created by Fredrick Ohen on 10/6/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Creates the rectangle
    StepperView *myStepperView = [[StepperView alloc]initWithFrame:(CGRectMake(50, 100, 300, 100))];
    myStepperView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:myStepperView];
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
