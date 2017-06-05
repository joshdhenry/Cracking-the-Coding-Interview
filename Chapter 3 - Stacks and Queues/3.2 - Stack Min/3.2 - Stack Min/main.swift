//
//  main.swift
//  3.2 - Stack Min
//
//  Created by Josh Henry on 6/4/17.
//  Copyright © 2017 Big Smash Software. All rights reserved.
//

//Design a stack which, in addition to push and pop, has a function min which returns the minimum element. Push, pop, and min should all operate in O(1) time.

import Foundation

class Node {
    var data: Int
    var next: Node?
    var minData: Int?
    
    init(data: Int) {
        self.data = data
    }
}

class Stack {
    private var top: Node?
    private var minimumData: Int?
    
    func push(data: Int) {
        let oldTop = top
        top = Node(data: data)
        top?.next = oldTop
        
        if minimumData == nil {
            minimumData = (top?.data)!
            top?.minData = top?.data
        }
        else if (top?.data)! <= minimumData! {
            minimumData = (top?.data)!
            top?.minData = top?.data
        }
        else {
            top?.minData = self.minimumData
        }
    }
    
    func pop() -> Int? {
        let currentTop = top
        top = top?.next
        minimumData = top?.minData
        return currentTop?.data
    }
    
    func peek() -> Int? {
        return top?.data
    }
    
    func minimum() -> Int? {
        return minimumData
    }
}


let stack = Stack()
stack.push(data: 10)
stack.push(data: 20)
stack.push(data: 30)
stack.push(data: 40)
stack.push(data: 5)
stack.pop()
print(stack.minimum())
