
//
//  Store.m
//  NSKeyedArchiveTutorial
//
//  Created by Fredrick Ohen on 10/14/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import "Store.h"

@implementation Store

-(id) initWithCoder:(NSCoder *) decoder
{
    self = [super init];
    self.name = [decoder decodeObjectForKey:@"name"];
    return self;
}

-(void) encodeWithCoder:(NSCoder *) coder
{
    [coder encodeObject:self.name forKey:@"name"];
}
@end
