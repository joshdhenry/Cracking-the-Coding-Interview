//
//  Node.m
//  2.6 - Palindrome
//
//  Created by Josh Henry on 6/12/17.
//  Copyright © 2017 Big Smash Software. All rights reserved.
//

#import "Node.h"
#import "LinkedList.h"

@implementation Node

-(id)initWithData: (int) data {
    self = [super init];
    self.data = data;
    
    return self;
}

@end
