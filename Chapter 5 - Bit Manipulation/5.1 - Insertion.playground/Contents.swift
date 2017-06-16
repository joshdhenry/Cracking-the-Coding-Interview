//: Playground - noun: a place where people can play

import UIKit

//5.1 - Insertion
//You are given two 32-bit numbers, n and m, and two bit positions, i and j. Write a method to insert m into n such that m starts at bit j and ends at bit i.

func updateBits(n: Int, m: Int, i: Int, j: Int) -> Int {
    print(String(n, radix: 2))
    print(String(m, radix: 2))

    //allOnes = 1111111111111111
    let allOnes: Int = ~0
    print(String(allOnes, radix: 2))

    //1's before position j, then 0's. left = 1111111110000000
    let left: Int = allOnes << (j + 1)
    print(String(left, radix: 2))
    
    //1's after position i. right = 0000000000000011
    let right: Int = (1 << i) - 1
    print(String(right, radix: 2))

    //All 1's except for 0's between i and j. mask = 1111111110000011
    let mask: Int = left | right
    print(String(mask, radix: 2))

    //Clear bits j through i
    let nCleared: Int = n & mask
    print(String(nCleared, radix: 2))

    //Move m into correct position
    let mShifted: Int = m << i
    print(String(mShifted, radix: 2))

    //OR them, and we're done
    print(String(nCleared | mShifted, radix: 2))
    return nCleared | mShifted
}

updateBits(n: 1024, m: 19, i: 2, j: 6)
