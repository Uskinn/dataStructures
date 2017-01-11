//: Playground - noun: a place where people can play

import UIKit

// Find two even words in a string

var myString: String = "To be, or not to be?"


func findWords(newString: String) -> [String] {
    let lowercaseString = newString.lowercased()
    var evenWords: [String] = []
    
    let myArr: [String] = lowercaseString.components(separatedBy: CharacterSet.init(charactersIn: ",? "))// ["to", "be", ",", "or", "not", "to", "be", "?"]
    myArr.d
    for (index, _) in myArr.enumerated() {
        for i in index+1..<myArr.count {
            if myArr[index] == myArr[i] {
                evenWords.append(myArr[index])
            }
        }
    }
    print(evenWords) // ["to", "be"]
    return evenWords
}

findWords(newString: myString)