//
//  StoreListTableViewController.m
//  Stores
//
//  Created by Fredrick Ohen on 10/10/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import "StoreListTableViewController.h"

@interface StoreListTableViewController ()

@end

@implementation StoreListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        
    //Unarchive NSUserDefaults here
    
    NSData *data = [[NSUserDefaults standardUserDefaults]objectForKey:@"storeList"];
    
    if(data == nil) {
         storeLists = [[NSMutableArray alloc]init];
    } else {
         storeLists = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    }
    
    [self.tableView reloadData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [storeLists count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    Store *store = storeLists[indexPath.row];
    cell.textLabel.text = store.storeName;
    cell.detailTextLabel.text = store.storeNumber;
    return cell;
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"showStoreList"]) {
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
   Store *storeList = storeLists[indexPath.row];
        StoreItemListViewController *controller = segue.destinationViewController;
    controller.selectedStoreItem = storeList;
    }
    
    else {
            // person clicked add button
        AddViewController *addStoreListViewController = segue.destinationViewController;
        addStoreListViewController.delegate = self;
    }
}
//add Delegate Method
-(void) addStoreListViewControllerDidAddStoreList:(Store *)storeList {
    [storeLists addObject:storeList];
    
    [self.tableView reloadData];
    NSUserDefaults *userDefaults= [NSUserDefaults standardUserDefaults];
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:storeLists];
    
    [userDefaults setObject:data forKey:@"storeList"];
    [userDefaults synchronize];
}
-(void)savedDataList {
    
   
}

@end
