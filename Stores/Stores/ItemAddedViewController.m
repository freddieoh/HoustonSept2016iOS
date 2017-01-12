//
//  ItemAddedViewController.m
//  Stores
//
//  Created by Fredrick Ohen on 10/11/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import "ItemAddedViewController.h"

@interface ItemAddedViewController ()

@end

@implementation ItemAddedViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

    
}

- (IBAction)savedButtonPressed:(id)sender {

   ItemAdd *itemAdded = [[ItemAdd alloc]init];
   itemAdded.itemName = self.itemNameTextField.text;
    
    [self.delegate itemAddDidAddController:itemAdded];
    [self dismissViewControllerAnimated:YES completion:nil];
    

}


@end
