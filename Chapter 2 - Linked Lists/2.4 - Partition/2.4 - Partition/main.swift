//
//  main.swift
//  2.4 - Partition
//
//  Created by Josh Henry on 6/10/17.
//  Copyright © 2017 Big Smash Software. All rights reserved.
//

import Foundation

class Node {
    var data: Int
    var next: Node?
    
    init(data: Int) {
        self.data = data
    }
}


func partition(node: Node?, x: Int) -> Node? {
    var onNode: Node? = node
    var head: Node? = node
    var tail: Node? = node
    
    while onNode != nil {
        let next: Node? = onNode!.next

        if onNode!.data < x {
            onNode!.next = head
            head = onNode
        }
        else {
            tail?.next = onNode
            tail = onNode
        }
        onNode = next
    }
    tail?.next = nil
    return head
}


func printList(head: Node) {
    var onNode: Node? = head
    
    while (onNode != nil) {
        print(onNode!.data)
        onNode = onNode!.next
    }
}


let n1: Node = Node(data: 3)
let n2: Node = Node(data: 5)
n1.next = n2
let n3: Node = Node(data: 8)
n2.next = n3
let n4: Node = Node(data: 5)
n3.next = n4
let n5: Node = Node(data: 10)
n4.next = n5
let n6: Node = Node(data: 2)
n5.next = n6
let n7: Node = Node(data: 1)
n6.next = n7

let newHead = partition(node: n1, x: 5)
printList(head: newHead!)


