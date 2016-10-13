//
//  CARViewController.m
//  HoustonSept2016iOS
//
//  Created by Fredrick Ohen on 9/28/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import "CARViewController.h"
#import "Person.h"

@interface CARViewController ()


@end

@implementation CARViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
 
    int count = 10;
    
    Car *car = [[Car alloc] init];
    car.make = @"Dodge";
    car.model = @"Chrysler";
    
    Person *personType = [[Person alloc]init];
    
    
    



}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
