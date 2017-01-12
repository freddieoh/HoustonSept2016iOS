//
//  ContainerViewController.h
//  ContainerViewAssignment
//
//  Created by Fredrick Ohen on 10/17/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Stock.h"
#import "StocksTableViewController.h"
#import "StocksDetailViewController.h"


@interface ContainerViewController : UIViewController<StocksTableViewControllerDelegate>

@property (nonatomic,strong) StocksTableViewController *stocksTableViewController;
@property (nonatomic,strong) StocksDetailViewController *stocksDetailViewController;

@end
