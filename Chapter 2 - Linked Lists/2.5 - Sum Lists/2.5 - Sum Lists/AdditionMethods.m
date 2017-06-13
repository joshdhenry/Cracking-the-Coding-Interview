//
//  AdditionMethods.m
//  2.5 - Sum Lists
//
//  Created by Josh Henry on 6/11/17.
//  Copyright © 2017 Big Smash Software. All rights reserved.
//

#import "AdditionMethods.h"

@implementation AdditionMethods

+(Node *)add:(Node *)n1 to:(Node *)n2 carry:(int) c {
    if (n1 == nil && n2 == nil && c == 0) {
        return nil;
    }
    
    Node *result = [[Node alloc] init];
    
    int value = c;

    value += n1.data;
    value += n2.data;
    
    result.data = value % 10;
    
    if (n1 != nil || n2 != nil) {
        Node *next = [self add: n1 == nil ? nil : n1.next to: n2 == nil ? nil : n2.next carry: value >= 10 ? 1 : 0];
        result.next = next;
    }
    
    return result;
}

@end
