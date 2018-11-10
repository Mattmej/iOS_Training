//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var sampleDict: [String: String] = ["John": "Lead Singer",
                                    "Rick": "Lead Guitar",
                                    "Bill": "Bassist",
                                    "Eric": "Drummer"]

// This line of code is invalid.
// We cannot reference an entry in a dictionary using an index.
//print(sampleDict.keys[0])

// Instead, explicitly refer to a dictionary entry's key.
print(sampleDict["John"])


////////////////
// Looping through a dictionary
////////////////


// Loop through keys
// note that there is no set order for dictionaries.
// Therefore, the concept of numeric keys don't apply here.
for name in sampleDict.keys {
    print("Here is '\(name)'!")
}

print("")

// Loop through values
for role in sampleDict.values {
    print("Here is a '\(role)'!")
}

print("")

// Loop through keys and values
for (name, role) in sampleDict {
    print("'\(name)' is a '\(role)'")
}

// Ordering keys in a dictionary

var numArrays = ["array1":[1, 2, 3, 4, 5],
                 "array2":[4, 2, 7, 18, 32],
                 "array3":[23, 54, 17, 76, 90]]

for key in numArrays.keys {
    // Sort descending
    numArrays[key]?.sort(by: >)
}


// Output: Optional([90, 76, 54, 23, 17])
// There is an "Optional" part to the answer because there is not a guaranteed output due to the presence of the optional ("?")
print(numArrays["array3"])

var letterArrays = ["array1":["a", "s", "d", "f"],
                    "array2":["g", "h", "j", "k"],
                    "array3":["q", "w", "e", "r"]]

// Attempt to sort arrays in letterArrays dictionary
for key in letterArrays.keys {
    numArrays[key]?.sort(by: >)
}

// Cannot sort letters in alphabetical order using the "sort" method
// To remove the "Optional" part of the answer, use an exclamation point ("!")
// That mark lets the program know that the output definitely has a value.
print(letterArrays["array3"]!)

