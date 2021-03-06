//
//  Node.h
//  2.5 - Sum Lists
//
//  Created by Josh Henry on 6/11/17.
//  Copyright © 2017 Big Smash Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property (atomic) int data;
@property (atomic) Node *next;

-(id)initWithData:(int) data;

@end
