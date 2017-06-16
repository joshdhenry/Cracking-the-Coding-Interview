//: Playground - noun: a place where people can play

import Cocoa

//1.9 - String Rotation
//Assume you have a method isSubString which checks if one word is a substring of another. Given 2 strings, s1 and s2, write code to check if s2 is a rotation of s1 using only one call to isSubString.
var str1 = "waterbottle"
var str2 = "erbottlewat"

func isRotation(s1: String, s2: String) -> Bool {
    guard s1.characters.count == s2.characters.count && s1.characters.count > 0 else {
        return false
    }
    
    let s1s1 = s1 + s1
    
    return s1s1.contains(s2)
}

isRotation(s1: str1, s2: str2)