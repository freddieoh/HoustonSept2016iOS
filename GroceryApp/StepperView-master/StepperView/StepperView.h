//
//  StepperView.h
//  StepperView
//
//  Created by Fredrick Ohen on 10/6/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol StepperViewDelegate <NSObject>

-(void) stepperViewDidValueChanged:(int) value;

@end

@interface StepperView : UIView


{
    UILabel *label;
    int currentValue;
}

@property (nonatomic,weak) id<StepperViewDelegate> delegate;

@end
