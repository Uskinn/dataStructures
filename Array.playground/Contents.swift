//: Playground - noun: a place where people can play

import UIKit
//let myArray = [4,5,6,5,7,8,7,4,5]

//////////// Finding the longest subarray in array //////////////////

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

//print(findLongestArray(inputArray: myArray))

///////////////// Finding the shortest subarray in array /////////////////////

func findShortestSubArrayInArray(inputArray: [Int]) -> [Int] {
    
    if inputArray.count <= 3 {
        return []
    }
    var isFiveFound: Bool = false
    var isSevenFound: Bool = false
    
    var resultArray: [Int] = []
    
    let elementFive: Int = 5
    let elementSeven: Int = 7
    
    var fiveIndex: Int = -1
    var sevenIndex: Int = -1
    
    for (index5, element5) in inputArray.enumerated() {
        for (index7, element7) in inputArray.enumerated() {
            if element5 == elementFive && element7 == elementSeven && isSevenFound == false {
                fiveIndex = index5
                sevenIndex = index7
                isSevenFound = true
               // isFiveFound = true
                print("5: \(fiveIndex), 7: \(sevenIndex)")

            }
            
        }
        
    }
    
    
    
    
    
    return resultArray
}

 let myArray = [4,5,6,5,7,8,7,4,5]

findShortestSubArrayInArray(inputArray: myArray)
























