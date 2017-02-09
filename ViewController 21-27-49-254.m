//
//  ViewController.m
//  Thermostat
//
//  Created by Fredrick Ohen on 10/3/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




















// Changes between Celsius and Fahrenheit
- (IBAction) segmentedControlValueChanged: (UISegmentedControl *) segmentedControl {
    
    if(segmentedControl.selectedSegmentIndex == 1) {
        double fahrenheiht = [_temperature.text doubleValue];
        double celsius = (fahrenheiht - 32) / 1.8;
        NSString *resultsLabel = [[NSString alloc] initWithFormat:@"%4.2f" , celsius];
        _temperature.text = resultsLabel;
        
        
    } else {
        double celsius = [ _temperature.text doubleValue];
        double fahrenheiht = (celsius *1.8) + 32;
        NSString *resultsLabel = [[NSString alloc]initWithFormat:@"%4.2f", fahrenheiht];
        _temperature.text = resultsLabel;
        
    }
        
    
    
}
// Slider value changed
- (IBAction)slider:(UISlider *)sender {
    UISlider *slider = (UISlider *)sender;
    NSString *newValue;
    
    newValue = [NSString stringWithFormat:@"%f",slider.value];
    
    self.temperature.text = newValue; 

}














@end
