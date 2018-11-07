//: Playground - noun: a place where people can play

import Cocoa

func sum(a:Int, b:Int) -> Int {
    _ = 10
    return a + b
}
let result = sum(a: 2, b: 2)

func multiply(a:Int, times:Int) -> Int {
    var result = 0
    
    for _ in 0..<times {
        result = result + a
    }
    return result
    
    // foreach element in thisArray {
        // Do something
    //}
}
let result2 = multiply(a: 2, times: 4)


func nestedForLoop(times:[[Int]]) -> Int {
    let result = 0
    
    for element in times {
        for item in element  {
            print(item)
        }
    }
    return result
}
 //let nestedRes = nestedForLoop(times: [[],[1,2,3], [2,3,4,5]])

let number = 3.0
let letter:Character = "a"

func rotation(array:[Int], rotation: Int) -> [Int] {
    // Logic here...
    return []
}

let array = [1,2,3,4,5]
let rotation = 3





var a:Int = 10
var b:Int = a
b = 100

// What is the value of A?
print(a)
print(b)
// What is the value of B?

class Integerr {
    var value: Int
    init(value:Int) {
        self.value = value
    }
}
struct IntegerStruct {
    var value: Int
    init(value:Int) {
        self.value = value
    }
}

var c:Integerr = Integerr(value: 10)
// ARC = 1
var d:Integerr = c
// ARC = 2
d.value = 100
// ARC = 0
// ARC RELEASE THAT MEMORY

print(d.value)
print(c.value)
// What is the value of C?
// What is the value of D?

var e:IntegerStruct = IntegerStruct(value: 10)
var f:IntegerStruct = e
f.value = 100

print(e.value)
print(f.value)
// What is the value of E?
// What is the value of F?



class MemoryManagment {
    var item:MemoryManagment?
}

let h = MemoryManagment()
let i = MemoryManagment()

h.item = i
i.item = h


var myString1 = "some"
var myString2:String? = "optional"
var myString3:String? = nil
var myString4:String? // = null

_ = myString1.uppercased()
_ = myString2?.uppercased()
let named = myString3?.uppercased().lowercased()

if _ = myString3 {
    myString3!.uppercased()
}






