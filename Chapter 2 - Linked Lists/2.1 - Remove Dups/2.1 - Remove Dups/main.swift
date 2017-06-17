//
//  main.swift
//  2.1 - Remove Dups
//
//  Created by Josh Henry on 6/4/17.
//  Copyright © 2017 Big Smash Software. All rights reserved.
//

var str = "Hello, playground"

//Write code to remove duplicates from an unsorted linked list

class Node {
    var data: Int
    var next: Node?
    
    init(data: Int) {
        self.data = data
    }
}

//Time complexity - O(n)
//Space complexity - O(n)
func findDuplicates(head: Node) -> Node {
    var alreadyExistsDict: Dictionary = [Int:Bool]()
    
    var onNode: Node? = head
    var previousNode: Node?
    
    while onNode != nil {
        if alreadyExistsDict[onNode!.data] == nil {
            alreadyExistsDict[onNode!.data] = true
            previousNode = onNode
        }
        else if alreadyExistsDict[onNode!.data] == true {
            previousNode?.next = onNode!.next
        }
        onNode = onNode!.next
    }
    return head
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
var n5 = Node(data: 40)
n4.next = n5
var n6 = Node(data: 40)
n5.next = n6
var n7 = Node(data: 40)
n6.next = n7
var n8 = Node(data: 80)
n7.next = n8

//printList(head: n1)
//print("---")
//findDuplicates(head: n1)
//printList(head: n1)


//How would you solve this problem if a temporary buffer isn't allowed?
//Use two pointers - a current and a runner
//Time complexity - O(n^2)
//Space complexity - O(1)
func findDuplicates2(head: Node) {
    var current: Node? = head
    
    while current != nil {
        var runner = current
        while runner?.next != nil {
            if runner?.next!.data == current!.data {
                runner?.next = runner?.next?.next
            }
            else {
                runner = runner?.next!
            }
        }
        current = current!.next
    }
}

printList(head: n1)
print("---")
findDuplicates(head: n1)
printList(head: n1)
