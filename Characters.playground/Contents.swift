//: Playground - noun: a place where people can play

import UIKit

var str = "Hl o, o"

func findChar(myStr: String) -> Bool {
    var isUnique = Bool()
    var uniArr: [Character] = []
    
    let lowerCase = myStr.lowercased()
    let char = Array(lowerCase.characters)
    
    for (index, _) in char.enumerated() {
        for i in index+1..<char.count {
            if char[index] == char[i] && char[index] != " " {
                uniArr.append(char[index])
                //print(uniArr)
                return isUnique
            }
        }
    }
    isUnique = true
    return isUnique
}

print(findChar(myStr: str))