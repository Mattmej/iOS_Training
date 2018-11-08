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



import UIKit

var str = "Hello, playground"

//let firstArray: [Int] = [1, 2, 3, 4, 5]
let firstArray: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// This array will become the looped version of the firstArray.
// To give this array a length, I filled a number of elements with nil values.
// This array was made the same length as the firstArray.
// This array needs an optional because it begins as an array of nil values, but ends as an array with non-nil values.
var newArray: Array<Int?> = Array(repeating: nil, count: firstArray.count)



// This function will "loop" a given array.
// Input the array into the "arrayIn" parameter.
// Specify the number of rightward loops in the "loopNum" parameter
// Since "arrayOut" will be changed, it needs to have the inout parameter.
// The function will return an array of integers.
func loopArray(loopNum:Int, arrayIn:Array<Int>, arrayOut:inout Array<Int?>) -> Array<Int?> {
    for var i in 0 ..< arrayIn.count {
        
        // if the sum of the element index plus the number of loops is equal to or exceeds the length of "arrayIn," then...
        if i + loopNum >= arrayIn.count {
            
            // Calculate the element's proper new index
            var newIndex:Int = abs(arrayIn.count - (i + loopNum))
            
            // Store the element in its new index in "arrayOut"
            arrayOut[newIndex] = arrayIn[i]
        }
            
        // Otherwise...
        else {
            
            // The new index does not need any confusing calculations.
            // Just advance the index by the number of loops specified.
            arrayOut[i+loopNum] = arrayIn[i]
        }
    }
    
    // returns the looped array.
    return arrayOut
}

// Function call
loopArray(loopNum:3, arrayIn:firstArray, arrayOut: &newArray)


