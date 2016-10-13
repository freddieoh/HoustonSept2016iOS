//
//  TasksTableViewController.h
//  TaskList
//
//  Created by Fredrick Ohen on 10/5/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TasksTableViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>


@property(nonatomic, weak) IBOutlet UITableView *tableView;


@end
