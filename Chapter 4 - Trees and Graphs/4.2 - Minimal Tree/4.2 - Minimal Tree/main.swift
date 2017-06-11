//
//  main.swift
//  4.2 - Minimal Tree
//
//  Created by Josh Henry on 6/4/17.
//  Copyright © 2017 Big Smash Software. All rights reserved.
//

//Given a sorted(increasing order) array with unique integer elements, write an algorithm to create a binary search tree with minimum height.

import Foundation

class Node {
    var data: Int
    var left: Node?
    var right: Node?
    
    init(data: Int) {
        self.data = data
    }
}

func createBST(inputArr: [Int], start: Int, end: Int) -> Node? {
    if start > end {
        return nil
    }
    
    let mid = (start + end) / 2

    let returnNode = Node(data: inputArr[mid])
    returnNode.left = createBST(inputArr: inputArr, start: start, end: mid - 1)
    returnNode.right = createBST(inputArr: inputArr, start: mid + 1, end: end)
    
    return returnNode
}

func printBST(root: Node) {
    print(root.data)
    print("---")

    if let left = root.left {
        print("LEFT")
        printBST(root: left)
    }
    if let right = root.right {
        print("RIGHT")
        printBST(root: right)
    }
}

let inputArr = [1, 2, 3, 4, 5, 6, 7]
let root: Node? = createBST(inputArr: inputArr, start: 0, end: inputArr.count - 1)
printBST(root: root!)
