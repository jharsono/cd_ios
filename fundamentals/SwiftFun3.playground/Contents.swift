//: Playground - noun: a place where people can play

import UIKit

//Write a program that adds the numbers 1-255 to an array
//Swap two random values in the array
//Hint: you can use the arc4random_uniform(UInt32) function to get a random number from 0 to the number passed in. The arc4random_uniform function takes in one parameter that is of the UInt32 type and returns a random number that is of the UInt32 type. How can you deal with this using your knowledge of types?
//Now write the code that swaps random values 100 times (You've created a "Shuffle"!)
//Remove the value "42" from the array and Print "We found the answer to the Ultimate Question of Life, the Universe, and Everything at index __" and print the index of where "42" was before you removed it.

var nums: [Int] = []
var start: Int = 1
var end: Int = 255

for i in start...end {
    nums.append(i)
}
//
//print(nums)
//
//print(arc4random_uniform(255))
//
//func swapRandom(arr: inout [Int]) {
//    let rand1 = Int(arc4random_uniform(255))
//    let rand2 = Int(arc4random_uniform(255))
//
//    arr.swapAt(rand1, rand2)
//
//    print("first random is \(rand1) and second random is \(rand2)")
//    print(arr)
//}
//
//swapRandom(arr: &nums)


func shuffle(arr: inout [Int]) {
    var i = 0
    while i < 100 {
        let rand1 = Int(arc4random_uniform(255))
        let rand2 = Int(arc4random_uniform(255))
      arr.swapAt(rand1, rand2)
        i += 1
    }
    let fortyTwo: Int? = arr.index(of: 42)
    print("We found the answer to the Ultimate Question of Life, The Universe, and Everything at index \(fortyTwo!)")
    arr.remove(at: fortyTwo!)
    print(arr)
}

shuffle(arr: &nums)




