//
//  main.m
//  3.5 - Sort Stack
//
//  Created by Josh Henry on 6/12/17.
//  Copyright © 2017 Big Smash Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"
#import "Stack.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Node *n1 = [[Node alloc] initWithData:8];
        Node *n2 = [[Node alloc] initWithData:3];
        Node *n3 = [[Node alloc] initWithData:2];
        Node *n4 = [[Node alloc] initWithData:9];
        Node *n5 = [[Node alloc] initWithData:6];
        
        n1.next = n2;
        n2.next = n3;
        n3.next = n4;
        n4.next = n5;

        Stack *stack = [[Stack alloc] initWithTop:n1];
        
        [stack printStackFromTop:n1];
        NSLog(@"-----");
        
        [stack sort];
        
        [stack printStackFromTop:n1];
    }
    return 0;
}
