//: Playground - noun: a place where people can play

import UIKit

//loop that prints 1-255
//var start = 1
//var end = 255
//
//for i in start...end {
//    print(i)
//}

//prints divisible by 3 or 5, but not both

//var start = 1
//var end = 100
//
//for i in start...end {
//    if (i % 15 == 0) {
//       continue
//    }else if (i % 3 == 0 || i % 5 == 0) {
//            print(i)
//    }
//}


////Fizzbuzz:
//
//var start = 1
//var end = 100
//
//for i in start...end {
//    if (i % 15 == 0) {
//       print(i, "FizzBuzz")
//    }else if (i % 3 == 0) {
//        print(i, "Fizz")
//    } else if (i % 5 == 0) {
//        print(i, "Buzz")
//    }
//}


//var toDoList = ["eat", "sleep", "drink"]
//
//toDoList.append("eat some more")
//
//print(toDoList)
//
//toDoList.remove(at: 1);
//
//print(toDoList);
//
//toDoList.insert("sleep", at: 1)
//
//print("array length is", toDoList.count)
//
//
//for task in toDoList {
//    print(task)
//}


var myDict = [
    "Josh": 31,
    "Iana": 30,
    "Floppy": 4,
    "Miso": 1
]

print(myDict)

if let age = myDict["Josh"] {
    print(age)
}


for (key, value) in myDict {
    print("Name is \(key) and age is \(value)")
}


//func everybodyBirthday(dict: Dictionary) {
//    for (key, value) in dict {
//        value += 1;
//        print("Name is \(key) and age is \(value)")
//    }
//
//}


func sayHello() {
    print("Hello!")
}

sayHello()


func sayHi(name: String) -> String {
    return "Hey, \(name)!"
}


print(sayHi(name: "Josh"))


