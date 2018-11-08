//: Playground - noun: a place where people can play

/*
 
 Assignment 1:
 
 Write a function that, given an array of numbers (i.e. [1, 2, 3, 4, 5]), performs a number of right circular rotations given by a specific index and return the resulting array.
 
 This means that every time you perform a rotation, the last item on the array will be moved to the first position of that same array.
 
 //////////////////////////
 
 Example:
 
 Array = [1, 2, 3, 4, 5]
 Index: 3
 Resulting array = [3, 4, 5, 1, 2]
 
 */


/*

 Game plan:
 
 Create a function called loopArray that will accept an int as an input (this input will henceforth be called "loopNum")
 
 If loopNum = 3...
 * Index 0: 1 => Index 4        // went up by 3
 * Index 2: 3 => Index 0
 
 Will need to loop from i=0 to i=array.length-1
 
 Size of array is 5.
 
 5-5=0
 5-4=1
 5-3=2
 5-4=1
 5-5=0
 
 * i=1:
 
 */



import UIKit

var str = "Hello, playground"

let firstArray: [Int] = [1, 2, 3, 4, 5]
var newArray: Array<Int?> = Array(repeating: nil, count: firstArray.count)
//var newIndex:Int

//func loopArray (loopNum:Int, arrayIn:Array<Int>, arrayOut:Array<Int>) -> Array<Int> {
////    for item in arrayIn {
////        if item + loop >= arrayIn.count {
////
////        }
////    }
//
//    for var i in 0 ..< arrayIn.count {
//        if i + loopNum >= arrayIn.count {
//            let newIndex:Int = abs(arrayIn.count - (i + loopNum))
//            arrayOut[newIndex] = arrayIn[i]
//        }
//    }
//}


func loopArray(loopNum:Int, arrayIn:Array<Int>, arrayOut:inout Array<Int?>) -> Array<Int?> {
    for var i in 0 ..< arrayIn.count {
        if i + loopNum >= arrayIn.count {
            var newIndex:Int = abs(arrayIn.count - (i + loopNum))
            arrayOut[newIndex] = arrayIn[i]
        }
        else {
            arrayOut[i+loopNum] = arrayIn[i]
        }
    }
    
    return arrayOut
}

loopArray(loopNum:3, arrayIn:firstArray, arrayOut: &newArray)


