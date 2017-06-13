//
//  Stack.h
//  2.6 - Palindrome
//
//  Created by Josh Henry on 6/12/17.
//  Copyright © 2017 Big Smash Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface Stack : NSObject
{
    Node *top;
}

-(void)push: (int)node;
-(int)pop;
-(int)peek;

@end
