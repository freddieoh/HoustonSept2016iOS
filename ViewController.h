//
//  ViewController.h
//  Thermostat
//
//  Created by Fredrick Ohen on 10/3/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property(nonatomic,weak) IBOutlet UILabel *temperature;
@property(nonatomic,weak) IBOutlet UISlider *slider;
@property(nonatomic, weak) IBOutlet UISegmentedControl *segmentedControl;

@end

