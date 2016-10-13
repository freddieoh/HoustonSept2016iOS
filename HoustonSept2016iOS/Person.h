//
//  PersonClass.h
//  HoustonSept2016iOS
//
//  Created by Fredrick Ohen on 9/28/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, assign) int age;
@property (nonatomic, assign) float weight;
@property (nonatomic, assign) float height;

@end
