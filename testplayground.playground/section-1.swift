// Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
//// perfect for algorithms...
//var x = 10
//for index in 1...20 {
//    let y = index * x--
//}
//
//var i: Int
//for i = 0; i <= 24; ++i {
//    let j = i
//}
//
//let testLabel = UILabel(frame: CGRectMake(0, 0, 200, 50))
//testLabel.backgroundColor = UIColor.redColor()
//testLabel.text = "Quasar Blu"
//testLabel.textAlignment = .Center
//testLabel.font = UIFont(name: "Sans serif", size: 24)
//testLabel
//
//var testNumber = 24
//var testLetter = "R"
//println("Int32 Min = \(Int32.min) Int32 Max = \(Int32.max)")

let testTuple = (10, 24, 234)
testTuple.2

let (one, two, three) = testTuple
one
two
three

let anotherTuple = (count: 1, message: "fuck")
anotherTuple.count
anotherTuple.message

// safe optional value...
var index: Int?
// value or nil...
index = nil
var treeArr = ["Oak", "Poplar", "Hickory"]
if let val = index {
    // been assigned...
    println(treeArr[val])
} else {
    // ...
    println("Ain't no damn value...")
}

// optional unwrapping pattern...
var optionalValue: Int?
optionalValue = nil
optionalValue = 24
if let value = optionalValue {
    println(value)
}

