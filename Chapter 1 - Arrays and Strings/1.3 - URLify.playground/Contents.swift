//: Playground - noun: a place where people can play

import UIKit

//Write a method to ereplace all spaces in a string with '%20'.
var str = "Hello, welcome to the playground"

func urlify(str: String) -> String {
    return str.replacingOccurrences(of: " ", with: "%20")
}

print(urlify(str: str))