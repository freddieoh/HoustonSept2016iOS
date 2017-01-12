//
//  StoreItemListViewController.m
//  Stores
//
//  Created by Fredrick Ohen on 10/10/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import "StoreItemListViewController.h"
#import "StoreListTableViewController.h"
@interface StoreItemListViewController ()

@end

@implementation StoreItemListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = self.selectedStoreItem.storeName;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    
    return self.selectedStoreItem.itemAdded.count;
}

-(void) itemAddDidAddController: (ItemAdd *) itemAdded {
    
    [self.selectedStoreItem.itemAdded addObject:itemAdded];
    [self.tableView reloadData];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    ItemAddedViewController *itemAddedViewController = segue.destinationViewController;
    itemAddedViewController.delegate = self;

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
    
    // Configure the cell...
    ItemAdd *itemAdded = self.selectedStoreItem.itemAdded[indexPath.row];
    cell.textLabel.text = itemAdded.itemName;
    
    return cell;
}

@end
