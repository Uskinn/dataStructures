//: Playground - noun: a place where people can play

import UIKit
let myArray = [4,5,6,5,7,8,7,4]

func findLongestArray(inputArray: [Int]) -> [Int] {
    
    if inputArray.count < 3 {
        return []
    }
    
    let elementFive = 5
    let elementSeven = 7
    
    var isFiveFound = false
    
    var five = -1
    var seven = -1
    
    var subArray: [Int] = []
    
    for (index, element) in inputArray.enumerated() {
        
        if element == elementFive && !isFiveFound {
            five = index
            isFiveFound = true
            
        }
        
        if element == elementSeven  {
            seven = index
        }
    }
    
    if five < seven && five >= 0 && seven >= 0 {
        for i in five...seven {
            subArray.append(inputArray[i])
        }
    }
    
    return subArray
    
}

print(findLongestArray(inputArray: myArray))

