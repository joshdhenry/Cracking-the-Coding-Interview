//
//  AdditionMethods.h
//  2.5 - Sum Lists
//
//  Created by Josh Henry on 6/11/17.
//  Copyright © 2017 Big Smash Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface AdditionMethods : NSObject
+(Node *)add:(Node *)n1 to:(Node *)n2 carry:(int) c;

@end
