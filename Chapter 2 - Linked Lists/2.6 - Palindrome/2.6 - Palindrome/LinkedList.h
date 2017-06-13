//
//  LinkedList.h
//  2.6 - Palindrome
//
//  Created by Josh Henry on 6/12/17.
//  Copyright © 2017 Big Smash Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface LinkedList : NSObject

@property Node *head;

-(BOOL)isPalindrome;
-(BOOL)isPalindrome2;
-(LinkedList *)reverseAndClone;
-(BOOL)isEqualToList: (LinkedList *)list;

@end
