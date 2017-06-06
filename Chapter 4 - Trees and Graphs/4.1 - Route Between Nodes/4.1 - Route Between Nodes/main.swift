//
//  main.swift
//  4.1 - Route Between Nodes
//
//  Created by Josh Henry on 6/4/17.
//  Copyright © 2017 Big Smash Software. All rights reserved.
//

import Foundation

enum VisitStatus {
    case unvisited, visited, visiting
}

class TreeNode {
    var data: Int
    var children: [TreeNode]?
    var visited: VisitStatus = .unvisited
    
    init(data: Int) {
        self.data = data
    }
}

class Graph {
    var nodes: [TreeNode]
    
    init(nodes: [TreeNode]) {
        self.nodes = nodes
    }
}


//Depth-first search
func isRoute(graph: Graph, start: TreeNode, end: TreeNode) -> Bool {
    return explore(start: start, end: end)
}

func explore(start: TreeNode, end: TreeNode) -> Bool {
    print(start.data)
    if start.visited == .visited {
        return false
    }
    start.visited = .visited
    if start === end {
        return true
    }
    if let adjacentNodes = start.children {
        for adjacent in adjacentNodes {
            if explore(start: adjacent, end: end) {
                return true
            }
        }
    }
    return false
}

let n1 = TreeNode(data: 10)
let n2 = TreeNode(data: 20)
let n3 = TreeNode(data: 30)
let n4 = TreeNode(data: 40)
let n5 = TreeNode(data: 50)
let n6 = TreeNode(data: 60)

n1.children = [n2, n3]
n2.children = [n1, n3]
n3.children = [n4]
n4.children = [n5]

let graph = Graph(nodes: [n1, n2, n3, n4, n5, n6])
print(isRoute(graph: graph, start: n1, end: n6))

/*
class QueueNode {
    var data: Int
    var next: QueueNode?
    var visited: VisitStatus = .unvisited

    init(data: Int) {
        self.data = data
    }
}

class Queue {
    var head: QueueNode?
    var tail: QueueNode?
    
    func enqueue(node: QueueNode) {
        let oldTail = tail
        oldTail?.next = node
        tail = oldTail
        
        if head == nil {
            head = node
        }
    }
    
    func dequeue() -> QueueNode? {
        var oldHead: QueueNode?
        if head != nil {
            oldHead = head
            head = head?.next
        }
        return oldHead
    }
    
    func isEmpty() -> Bool {
        return head == nil && tail == nil
    }
}

//Breadth-first search
func isRoute2(graph: Graph, start: TreeNode, end: TreeNode) -> Bool {
    
    
}

func explore2(root: QueueNode) {
    let queue = Queue()
    root.visited = .visited
    
    queue.enqueue(node: root)
    
    while !queue.isEmpty() {
        let removed = queue.dequeue()
        removed?.visited = .visited
        
        for n in removed.ad
    }
}
*/




