//
//  Stack.h
//  3.5 - Sort Stack
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
-(id)initWithTop:(Node *)node;
-(void)push: (int) data;
-(int)pop;
-(int)peek;
-(BOOL)isEmpty;
-(void)sort;
-(void)printStackFromTop: (Node *)node;

@end
