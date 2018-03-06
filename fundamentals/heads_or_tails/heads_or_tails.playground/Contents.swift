//: Playground - noun: a place where people can play

import UIKit

//Create a function tossCoin() -> String
//Have this function print "Tossing a Coin!"
//Next have the function randomly pick either "Heads" or "Tails"
//Have the function print the result
//Finally, have the function return the result
//Now create another function tossMultipleCoins(Int) -> Double
//Have this function call the tossCoin function multiple times based on the Integer input
//Have the function return a Double that reflects the ratio of head toss to total toss

func tossCoin() -> String {
    print("Tossing a Coin!")
    let coin = ["Heads", "Tails"]
    let idx = Int(arc4random_uniform(2))
    let result = coin[idx]
    print(result)
    return coin[idx];
}

//tossCoin()
//tossCoin()
//tossCoin()
//tossCoin()
//tossCoin()
//tossCoin()
//tossCoin()
//tossCoin()

func tossMultipleCoins(int: Int) -> Double {
    var i = 0
    var heads = 0.0
    var tails = 0.0
    while i < int{
        if tossCoin() == "Heads" {
            heads += 1
            print("heads count:", heads)
        } else {
            tails += 1
            print("tails count:", tails)
        }
        i += 1
    }
    print("Heads to Total Toss Ratio:", heads/(heads+tails))
    return heads/(heads+tails)
}


tossMultipleCoins(int: 8)

