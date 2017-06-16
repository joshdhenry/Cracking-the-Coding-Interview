//
//  Stack.m
//  3.5 - Sort Stack
//
//  Created by Josh Henry on 6/12/17.
//  Copyright © 2017 Big Smash Software. All rights reserved.
//

#import "Stack.h"

@implementation Stack

-(id)initWithTop:(Node *)node {
    self = [super init];
    top = node;
    return self;
}

-(void)push: (int) data {
    Node *newTop = [[Node alloc] initWithData:data];
    newTop.next = top;
    top = newTop;
}

-(int)pop {
    int returnData = top.data;
    top = top.next;
    return returnData;
}

-(int)peek {
    return top.data;
}

-(BOOL)isEmpty {
    return top == nil;
}

-(void)sort {
    Stack *tempStack = [[Stack alloc] init];
    
    //Shuffle items back and forth until sorted
    while (![self isEmpty]) {
        int popped = [self pop];
        
        while (![tempStack isEmpty] && [tempStack peek] > popped) {
            [self push:(tempStack.pop)];
        }
        [tempStack push:popped];
    }
    
    //Copy items fro tempStack back into self stack
    while (![tempStack isEmpty]) {
        [self push:[tempStack pop]];
    }
}

-(void)printStackFromTop: (Node *)node {
    Node *onNode = top;
    while (onNode != nil) {
        NSLog(@"%d", onNode.data);
        onNode = onNode.next;
    }
}

@end
