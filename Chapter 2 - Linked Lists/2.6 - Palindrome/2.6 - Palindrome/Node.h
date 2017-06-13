//
//  Node.h
//  2.6 - Palindrome
//
//  Created by Josh Henry on 6/12/17.
//  Copyright © 2017 Big Smash Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject
@property int data;
@property Node *next;
-(id)initWithData: (int) data;

@end
