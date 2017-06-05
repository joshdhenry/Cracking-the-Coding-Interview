//
//  main.swift
//  2.3 - Delete Middle Node
//
//  Created by Josh Henry on 6/4/17.
//  Copyright © 2017 Big Smash Software. All rights reserved.
//

//Delete a node in the middle of a singly linked list (i.e. any node but the first and last node, not necessarily the exact middle) of a singly linked list, given only access to that node.
import Foundation

class Node {
    var data: Int
    var next: Node?
    
    init(data: Int) {
        self.data = data
    }
}


func deleteNode(node: Node) {
    node.data = (node.next?.data)!
    node.next = node.next?.next
}

func printList(head: Node) {
    var onNode: Node? = head
    
    while onNode != nil {
        print(onNode!.data)
        onNode = onNode!.next
    }
}

var n1 = Node(data: 10)
var n2 = Node(data: 20)
n1.next = n2
var n3 = Node(data: 30)
n2.next = n3
var n4 = Node(data: 40)
n3.next = n4
var n5 = Node(data: 50)
n4.next = n5
var n6 = Node(data: 60)
n5.next = n6
var n7 = Node(data: 70)
n6.next = n7
var n8 = Node(data: 80)
n7.next = n8

printList(head: n1)
print("---")
deleteNode(node: n5)
printList(head: n1)
