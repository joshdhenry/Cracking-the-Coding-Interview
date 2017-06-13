//
//  LinkedList.m
//  2.6 - Palindrome
//
//  Created by Josh Henry on 6/12/17.
//  Copyright © 2017 Big Smash Software. All rights reserved.
//

#import "LinkedList.h"
#import "Stack.h"

@implementation LinkedList

-(BOOL)isPalindrome {
    LinkedList *reversed = [self reverseAndClone];
    return [self isEqualToList: reversed];
}

//Method #1: Reverse the list, then compare it to the original
-(LinkedList *)reverseAndClone {
    Node *onNode = self.head;
    Node *head;
    
    while (onNode != nil) {
        Node *clonedNode = [[Node alloc] initWithData:onNode.data];
        clonedNode.next = head;
        head = clonedNode;
        onNode = onNode.next;
    }
    LinkedList *returnList = [[LinkedList alloc] init];
    returnList.head = head;
    return returnList;
}


//Method #2: Use a stack and a slow and fast runner to traverse the list. Push elements from first half onto the list. When the fast runner (moving at 2x speed) reaches the end of the list, we know we're at the middle.
-(BOOL)isPalindrome2 {
    Node *fast = self.head;
    Node *slow = self.head;
    
    Stack *stack = [[Stack alloc] init];
    
    while(fast != nil && fast.next != nil) {
        [stack push:slow.data];
        slow = slow.next;
        fast = fast.next.next;
    }
    
    //fast.next IS equal to nil but fast is not, so there is odd # of elements. Skip the middle element.
    if (fast != nil) {
        slow = slow.next;
    }
    
    while (slow != nil) {
        int top = [stack pop];
        
        //If values are different, then it isn't a palindrome
        if (top != slow.data) {
            return false;
        }
        slow = slow.next;
    }
    return true;
}


-(BOOL)isEqualToList: (LinkedList *)list {
    Node *onNode1 = self.head;
    Node *onNode2 = list.head;
    
    while (onNode1 != nil && onNode2 != nil) {
        if (onNode1.data != onNode2.data) {
            return false;
        }
        onNode1 = onNode1.next;
        onNode2 = onNode2.next;
    }
    return true;
}

@end
