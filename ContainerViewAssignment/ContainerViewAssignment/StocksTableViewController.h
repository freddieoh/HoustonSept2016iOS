//
//  StocksTableViewController.h
//  ContainerViewAssignment
//
//  Created by Fredrick Ohen on 10/17/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StocksDetailViewController.h"
#import "Stock.h"
@protocol StocksTableViewControllerDelegate <NSObject>

-(void) stocksTableViewControllerStockSelected:(Stock *) stock;

@end

@interface StocksTableViewController : UITableViewController
{
NSMutableArray *stocks;
}
@property (nonatomic,weak) id <StocksTableViewControllerDelegate> delegate;

@end
