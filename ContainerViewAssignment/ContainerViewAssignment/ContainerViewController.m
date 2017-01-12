//
//  ContainerViewController.m
//  ContainerViewAssignment
//
//  Created by Fredrick Ohen on 10/17/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import "ContainerViewController.h"

@interface ContainerViewController ()

@end

@implementation ContainerViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSArray *childViewControllers = self.childViewControllers;
    self.stocksTableViewController = childViewControllers[0];
    self.stocksTableViewController.delegate = self;
    
    self.stocksDetailViewController = childViewControllers[1];
    
}

-(void) stocksTableViewControllerStockSelected:(Stock *) stock; {

    self.stocksDetailViewController.updatedStocksLabel.text = stock.name;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
