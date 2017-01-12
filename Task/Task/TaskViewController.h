//
//  TaskViewController.h
//  Task
//
//  Created by Fredrick Ohen on 10/18/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Task.h"

@interface TaskViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,copy) NSMutableArray *tasks;

@end
