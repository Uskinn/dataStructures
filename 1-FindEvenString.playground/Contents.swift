//: Playground - noun: a place where people can play

import UIKit

// Find two even words in string

var myString: String = "To be or not to be ?"

func findWords(newString: String) -> [String] {
    var evenWords: [String] = []
    // var word: Bool = true
    let myArr: [String] = newString.components(separatedBy: " ") // ["To", "be", "or", "not", "to", "be", "?"]
    for (index, _) in myArr.enumerated() {
        for i in index+1..<myArr.count {
            if myArr[index] == myArr[i] {
            evenWords.append(myArr[index])
            }
        }
    }
    print(evenWords) // ["be"]
    return evenWords
}

findWords(newString: myString)