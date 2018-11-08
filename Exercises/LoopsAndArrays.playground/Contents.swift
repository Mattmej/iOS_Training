//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let firstArray:Array<Int> = [1, 2, 3, 4, 5]

func simpleLoop(arrayIn:Array<Int>) {
    for var i in 0 ..< arrayIn.count {
        print(i)
    }
}

simpleLoop(arrayIn:firstArray)

//////////////

// spacing
print("\n")

func isOdd(arrayIn:Array<Int>) {
    for var i in 0 ..< arrayIn.count {
        if arrayIn[i] % 2 != 0 {
            print("\(arrayIn[i]) is an odd number!")
        }
            
        else {
            continue
        }
    }
}

isOdd(arrayIn:firstArray)


