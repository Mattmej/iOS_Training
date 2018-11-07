//: Playground - noun: a place where people can play

import UIKit



func showStr(str:String) -> String {
    return str
}

let shownString = showStr(str: "Hello World!")

let number = 3

var a = 3
var b = a
b = 100

class Integerr {
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

struct IntegerStruct {
    var value: Int
    init(value:Int) {
        self.value = value
    }
}

var e:IntegerStruct = IntegerStruct(value:10)
var f:IntegerStruct = e
f.value = 100

print(e.value)


class MemoryManagement {
    var item:MemoryManagement?

}

let h = MemoryManagement()
let i = MemoryManagement()

h.item = i
i.item = h

var myString1 = "some"               // this variable is not nil at beginning.
var myString2:String? = "optional"      // this variable is allowed to be optional.
var myString3:String? = nil
var myString4:String?           // = null

// These are anonymous variable; good if you won't access this variable again.
_ = myString1.uppercased()      // "SOME"
_ = myString2?.uppercased()     // "OPTIONAL"
_ = myString3?.uppercased()     // nil



