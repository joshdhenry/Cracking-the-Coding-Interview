//
//  main.m
//  2.6 - Palindrome
//
//  Created by Josh Henry on 6/12/17.
//  Copyright © 2017 Big Smash Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"
#import "LinkedList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Node *n1 = [[Node alloc] initWithData:1];
        Node *n2 = [[Node alloc] initWithData:2];
        Node *n3 = [[Node alloc] initWithData:3];
        Node *n4 = [[Node alloc] initWithData:2];
        Node *n5 = [[Node alloc] initWithData:1];

        n1.next = n2;
        n2.next = n3;
        n3.next = n4;
        n4.next = n5;

        LinkedList *linkedList = [[LinkedList alloc] init];
        linkedList.head = n1;
        
        BOOL isPalindrome = [linkedList isPalindrome];
        NSLog(@"%s", isPalindrome ? "Yes" : "No");
        
        BOOL isPalindrome2 = [linkedList isPalindrome2];
        NSLog(@"%s", isPalindrome2 ? "Yes" : "No");
    }
    return 0;
}
