//
//  main.m
//  2.5 - Sum Lists
//
//  Created by Josh Henry on 6/11/17.
//  Copyright © 2017 Big Smash Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"
#import "AdditionMethods.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Node *n11 = [[Node alloc] initWithData:7];
        Node *n12 = [[Node alloc] initWithData:1];
        Node *n13 = [[Node alloc] initWithData:6];
        n11.next = n12;
        n12.next = n13;

        Node *n21 = [[Node alloc] initWithData:5];
        Node *n22 = [[Node alloc] initWithData:9];
        Node *n23 = [[Node alloc] initWithData:2];
        Node *n24 = [[Node alloc] initWithData:6];
        n21.next = n22;
        n22.next = n23;
        n23.next = n24;
        
        Node *sum = [AdditionMethods add:n11 to:n21 carry:0];

        //Print
        Node *onNode = sum;
        while (onNode != nil) {
            NSLog(@"%d", onNode.data);
            onNode = onNode.next;
        }
    }
    return 0;
}


