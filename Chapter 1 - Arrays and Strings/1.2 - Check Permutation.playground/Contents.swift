//: Playground - noun: a place where people can play

//Given two strings, write a method to determine if one is a permutation of the other.
import UIKit

var str1 = "Hello"
var str2 = "eHlol"
var str3 = "eHlollhagdsfg"

func isPermutation(str1: String, str2: String) -> Bool {
    let str1Arr = str1.characters.map( { $0 } )
    let str2Arr = str2.characters.map( { $0 } )
    
    return str1Arr.sorted() == str2Arr.sorted()
}

isPermutation(str1: str1, str2: str2)
isPermutation(str1: str1, str2: str3)


//Or check they have the same characters by using a dictionary
func isPermutation2(str1: String, str2: String) -> Bool {
    var str1Dict: Dictionary = [Character : UInt]()
    var str2Dict: Dictionary = [Character : UInt]()

    for c1 in str1.characters.map( { $0 } ) {
        if str1Dict[c1] == nil {
            str1Dict[c1] = 1
        }
        else {
            str1Dict[c1] = str1Dict[c1]! + 1
        }
    }
    
    for c2 in str2.characters.map( { $0 } ) {
        if str2Dict[c2] == nil {
            str2Dict[c2] = 1
        }
        else {
            str2Dict[c2] = str2Dict[c2]! + 1
        }
    }
    
    return str1Dict == str2Dict
}

isPermutation2(str1: str1, str2: str2)
isPermutation2(str1: str1, str2: str3)