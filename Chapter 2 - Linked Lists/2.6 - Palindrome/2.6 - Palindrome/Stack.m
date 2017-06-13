//
//  Stack.m
//  2.6 - Palindrome
//
//  Created by Josh Henry on 6/12/17.
//  Copyright © 2017 Big Smash Software. All rights reserved.
//

#import "Stack.h"

@implementation Stack

-(void)push: (int)data {
    Node *newNode = [[Node alloc] initWithData:data];
    newNode.next = top;
    top = newNode;
}


-(int)pop {
    int oldTopData = top.data;
    top = top.next;
    return oldTopData;
}


-(int)peek {
    return top.data;
}

@end
