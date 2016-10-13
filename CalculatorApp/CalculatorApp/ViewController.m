//
//  ViewController.m
//  CalculatorApp
//
//  Created by Fredrick Ohen on 9/27/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()



@property(nonatomic,weak) IBOutlet UITextField *firstNumber;

@property(nonatomic,weak) IBOutlet UITextField *secondNumber;

@property(nonatomic,weak) IBOutlet UILabel *resultLabel;

@end

@implementation ViewController


- (double)add:(double)number1 secondNumber:(double)number2{
    return number1 + number2;
}

- (IBAction) addButtonClicked {
    
    NSString *number1 = self.firstNumber.text;
    NSString *number2 = self.secondNumber.text;
    // making number a string
   

    
    double value1 = [number1 doubleValue];
    double value2 = [number2 doubleValue];
    // converts String to Integer
    
    double results = [self add:value1 secondNumber:value2];
    
    NSString *resultString = [NSString stringWithFormat:@"%f",results];
    // converts Integer to String
    

    self.resultLabel.text =  resultString;
    // displays results
    

}

- (double)subtract:(double)number1 secondNumber:(double)number2{
    return number1 - number2;
    
}

- (IBAction) subtractButtonClicked {
  
    NSString *number1 = self.firstNumber.text;
    NSString *number2 = self.secondNumber.text;
    
    double value1 = [number1 doubleValue];
    double value2 = [number2 doubleValue];
    
    
    double results = [self subtract:value1 secondNumber:value2];
    
    NSString *resultString = [NSString stringWithFormat:@"%f" , results];
    
    self.resultLabel.text = resultString;
    
}

- (double)multiply:(double)number1 secondNumber:(double)number2{
    return number1*number2;
}


- (IBAction) multiplyButtonClicked {

    NSString *number1 = self.firstNumber.text;
    NSString *number2 = self.secondNumber.text;
    
    double value1 = [number1 doubleValue];
    double value2 = [number2 doubleValue];
    
    double results =[self multiply:value1 secondNumber:value2];
    
    NSString *resultString = [NSString stringWithFormat:@"%.3f" , results];
    // @%.""f formats the number of zeros after the string
    
    self.resultLabel.text = resultString;
}



- (float)divide:(float)number1 secondNumber:(float)number2{
    return number1 / number2;
}

- (IBAction) divideButtonClicked {
    
    NSString *number1 = self.firstNumber.text;
    NSString *number2 = self.secondNumber.text;
    
    float value1 = [number1 intValue];
    float value2 = [number2 intValue];
  
    float results =[self divide:value1 secondNumber:value2];
    
    NSString *resultString = [NSString stringWithFormat:@"%f",results];
    
    self.resultLabel.text = resultString;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
