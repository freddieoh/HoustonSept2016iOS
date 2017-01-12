//
//  ViewController.m
//  NSKeyedArchiveTutorial
//
//  Created by Fredrick Ohen on 10/14/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import "ViewController.h"
#import "Store.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSMutableArray *stores = [[NSMutableArray alloc]init];
    
    Store *store = [[Store alloc]init];
    store.name = @"HEB";
    
    [stores addObject:store];
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:stores forKey:@"Stores"];
    [userDefaults synchronize];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
