//
//  CollectionsFlowControlViewController.m
//  HoustonSept2016iOS
//
//  Created by Fredrick Ohen on 9/29/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import "CollectionsFlowControlViewController.h"

@interface CollectionsFlowControlViewController ()

@end

@implementation CollectionsFlowControlViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSArray *numbers = [[NSArray alloc]init];
    
    NSMutableArray *alphabet = [[NSMutableArray alloc]init];
    [alphabet addObject:@"Frank"];
    [alphabet addObject:@"Tina"];
    [alphabet addObject:@"Fredrick"];
    [alphabet addObject:@"Ebony"];
    //
    
    
    NSMutableArray *names = [NSMutableArray arrayWithObjects:@"",@"",@"", nil];
    //

    int age = 13;
    if(age < 18);
    


}

- (IBAction) sliderValuedChanged {

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
