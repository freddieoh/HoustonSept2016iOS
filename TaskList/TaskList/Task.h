//
//  Task.h
//  TaskList
//
//  Created by Fredrick Ohen on 10/5/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Task : NSObject
{
    NSMutableArray *task;
}

@property(nonatomic,copy) NSString *title;

@end
