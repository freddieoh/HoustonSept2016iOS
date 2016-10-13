//
//  Birds.h
//  HoustonSept2016iOS
//
//  Created by Fredrick Ohen on 10/4/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import <Foundation/Foundation.h>

// Protocol stays outside of the interface
@protocol Flyable <NSObject>

- (void) fly;

@end

@protocol Hunting <NSObject>

- (void) hunt;


@end

@interface Birds : NSObject

- (void) walk;
- (void) eat;
- (void) sleep;



@end
