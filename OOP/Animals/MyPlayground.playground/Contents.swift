//: Playground - noun: a place where people can play

import UIKit

class Animal {
    var name: String
    var health: 100
    
    init(
        name: String) {
        
        self.name = name
    }
    
    func displayHealth() {
        print(self.health)
    }
}


class Cat : Animal {
    init(catName: String) {
        super.init(name: catName)
    }
}
