//
//  StepperView.m
//  StepperView
//
//  Created by Fredrick Ohen on 10/6/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import "StepperView.h"

@implementation StepperView

-(id) initWithFrame:(CGRect)frame  {
    
    // Create the minus button
    self = [super initWithFrame:frame];
    currentValue = 5;
    
    UIButton *negButton = [UIButton buttonWithType:UIButtonTypeCustom];
    negButton.backgroundColor = [UIColor greenColor];
    negButton.frame = CGRectMake(0, 0, 100, 100);
    [negButton setTitle:@"-" forState:UIControlStateNormal];
    [negButton addTarget:self action:@selector(negButtonPressed:)forControlEvents:UIControlEventTouchUpInside];
    
    // Create the plus button
    UIButton *posButton = [UIButton buttonWithType:UIButtonTypeCustom];
    posButton.backgroundColor = [UIColor blueColor];
    posButton.frame = CGRectMake(250,0, 50,100);
    [posButton setTitle:@"+" forState:UIControlStateNormal];
    [posButton addTarget:self action:@selector(posButtonPressed:)forControlEvents:UIControlEventTouchUpInside];
    
    //Creates the label
    label = [[UILabel alloc] initWithFrame:CGRectMake(20, 30, 300, 50)];
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor blackColor];
    label.text = @"This IS a Label";
    
    [self addSubview:negButton];
    [self addSubview:posButton];
    [self addSubview:label];
    
    return self;

}

-(void) negButtonPressed:(id) sender {
    currentValue += 1;
    
    
}

-(void) posButtonPressed:(id) sender {
    currentValue -=1;
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
