//
//  StocksTableViewController.m
//  ContainerViewAssignment
//
//  Created by Fredrick Ohen on 10/17/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import "StocksTableViewController.h"

@interface StocksTableViewController ()

@end

@implementation StocksTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Set the NSMutable Array
    stocks = [[NSMutableArray alloc]init];
    Stock *google = [[Stock alloc]init];
    google.name = @"Google";
    google.price = 14.6;
    [stocks addObject:google];
    
    
    Stock *apple = [[Stock alloc]init];
    apple.name = @"Apple";
    [stocks addObject:apple];
    
    Stock *facebook = [[Stock alloc]init];
    facebook.name = @"Facebook";
    [stocks addObject:facebook];
    
    Stock *tesla = [[Stock alloc]init];
    tesla.name = @"Tesla";
    [stocks addObject:tesla];
    
    Stock *microsoft = [[Stock alloc]init];
    microsoft.name = @"Microsft";
    [stocks addObject:microsoft];
    
    Stock *snapchat = [[Stock alloc]init];
    snapchat.name = @"Snapchat";
    [stocks addObject:snapchat];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return stocks.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    Stock *stock = stocks[indexPath.row];
    
    cell.textLabel.text = stock.name;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Stock *stock = stocks [indexPath.row];
    [self.delegate stocksTableViewControllerStockSelected:stock];

}



@end
