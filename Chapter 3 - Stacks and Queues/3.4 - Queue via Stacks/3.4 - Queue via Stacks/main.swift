//
//  main.swift
//  3.4 - Queue via Stacks
//
//  Created by Josh Henry on 6/4/17.
//  Copyright © 2017 Big Smash Software. All rights reserved.
//

import Foundation

import Foundation

class Node {
    var data: Int
    var next: Node?
    
    init(_ data: Int) {
        self.data = data
    }
}


class Stack {
    private var top: Node?
    
    func push(data: Int) {
        let oldTop = top
        top = Node(data)
        top?.next = oldTop
    }
    
    func pop() -> Int? {
        let topToPop = top
        top = top?.next
        return topToPop?.data
    }
    
    func peek() -> Int? {
        return top?.data
    }
    
    func isEmpty() -> Bool {
        return top == nil
    }
}


class DoubleStackQueue {
    let stackOldestOnTop: Stack = Stack()
    let stackNewestOnTop: Stack = Stack()
    
    func enqueue(data: Int) {
        stackNewestOnTop.push(data: data)
    }
    
    func peek() -> Int? {
        prepOld()
        return stackOldestOnTop.peek()
    }
    
    func dequeue() -> Int? {
        prepOld()
        return stackOldestOnTop.pop()
    }
    
    func prepOld() {
        if stackOldestOnTop.isEmpty() {
            while(!stackNewestOnTop.isEmpty()) {
                stackOldestOnTop.push(data: stackNewestOnTop.pop()!)
            }
        }
    }
}



