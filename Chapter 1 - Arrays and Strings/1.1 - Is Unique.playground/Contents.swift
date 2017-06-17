//: Playground - noun: a place where people can play

import UIKit
import Foundation

//Implement an algorithm to see if a string has all unique characters.

//First ask if the string is ASCII or Unicode. Unicode needs more storage space.


//Time complexity: O(n) where n is the length of the string
//Space complexity: O(1)
func isUniqueCharacters(str: String) -> Bool {
    var lettersDict: Dictionary = [Character : Bool]()
    
    let strArr = str.characters.map( { $0 } )
    
    for c in strArr {
        if lettersDict[c] == nil {
            lettersDict[c] = true
        }
        else {
            return false
        }
    }
    return true
}
var str = "Hello, playground"
print(isUniqueCharacters(str: str))
var str2 = "Howdy"
print(isUniqueCharacters(str: str2))


//What if you cannot use additional data structures?

//Time complexity: O(n^2) where n is the length of the string
//Space complexity: O(1)
func isUniqueCharacters2(str: String) -> Bool {
    for c1: Character in str.characters {
        var alreadyFound = false
        for c2: Character in str.characters {
            if c1 == c2 {
                if alreadyFound {
                    return false
                }
                else {
                    alreadyFound = true
                }
            }
        }
    }
    return true
}

var str3 = "Hello, playground"
print(isUniqueCharacters2(str: str))
var str4 = "Howdy"
print(isUniqueCharacters2(str: str2))

//Other options to try:
//Use a bit vector
//Sort the string and check for neighboring duplicate characters.

