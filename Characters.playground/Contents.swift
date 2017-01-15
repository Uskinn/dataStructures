//: Playground - noun: a place where people can play

import UIKit

var str = "Hello hello!"


// check if there is duplicated characters
func findChar(myStr: String) -> Bool {
    var isUnique = Bool()
    var uniArr: [Character] = []
    
    let lowerCase = myStr.lowercased() // "hello!"
    let char = Array(lowerCase.characters) // ["h", "e", "l", "l", "o", "!"]
    
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

//print(findChar(myStr: str))  // false

let charac: Character = ")"

str.append(charac)

let charqwerty = str.characters.count


let isContains = str.contains("!")

var myArr = Array(str.characters)
myArr.removeLast()
print(myArr)


for (index, value) in myArr.enumerated() {
  //  print("\(index+1): \(value)")
}

for char in str.characters {
  //  print(char)
}


let stringFromArray = String(myArr)

let newStr = str.characters.split(separator: " ")









