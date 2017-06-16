import Foundation

//1.4 - Palindrome Permutation
//Given a string, write a function to check if it is a permutation of a palindrome.
var str = "Tact Coa"

func isPalindromePermutation(str: String) -> Bool {
    var strConditioned = str.lowercased()
    strConditioned = strConditioned.replacingOccurrences(of: " ", with: "")
    
    var cDict: Dictionary = [String : UInt]()
    
    for c in strConditioned.characters.map( { String($0) } ) {
        if cDict[c] != nil {
            cDict[c] = cDict[c]! + 1
        }
        else {
            cDict[c] = 1
        }
    }
    
    var oddCount = 0
    
    for cCount in cDict.values {
        if cCount % 2 == 1 {
            oddCount += 1
        }
        if oddCount > 1 {
            return false
        }
    }
    return true
}

print(isPalindromePermutation(str: str))