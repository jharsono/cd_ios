
import UIKit

struct Card {
    var color: String
    var roll: Int(arc4random_uniform(6) +1) //random number between 0 and including 6, not including 0
    
    init(color: String) {
        self.color = color
        if (self.roll ==1 || self.roll == 2) {
            self.color = "Blue"
        }
        else if  (self.roll == 3 || self.roll == 4) {
            self.color = "Red"
        }
        else if (self.roll == 4 || self.roll == 5 || self.roll == 6) {
            self.color = "Green"
        }
    }
 }

class Deck {
    var cards: [Card] = [] //set an array of type Card
    init() {
        for _ in 1...10 { //deal 30 cards, 10 of each color
            cards.append(Card.init(color: "Blue"))
            cards.append(Card.init(color: "Red"))
            cards.append(Card.init(color: "Green"))
        }
    }
    func deal() -> Card {
        let cardRemoved = cards.remove(at: cards.count - 1)
        return cardRemoved
    }
    func isEmpty() -> Bool {//return a boolean of hand is empty
        if cards.count < 1 {
            return true
        } else {
            return false
        }
    }
    func shuffle() {
        let numberOFCards = Uint32(cards.count)
        for _ in 1...cards.count {
            let position1 = Int(arc4random_uniform(numberOFCards))
            let position2 = Int(arc4random_uniform(numberOFCards))
            let temp = cards[position1]
            
            cards[position1] = cards[position2]
            cards[position2] = temp
        }
    }
}


class Player {
    var name: String
    var hand: [Card] = []
    init(name: String) {
        self.name = name
    }
    func draw(from: Deck) -> Card { //external var name is "from" and you are drawing from type Deck, returning type Card
        hand.append(from.deal())
        return hand[hand.count-1]
    }
    func rollDice() -> Int {
        return Int(arc4random_uniform(6) + 1) //1-6, not including zero
    }
    
    func matchingCards(color: String, roll: Int, hand: [Card]) -> Int {
        var matching = 0
        for card in hand {
            if card.color == color && card.roll == roll {
                matching +=1
            }
        }
        return matching
    }
}

var newDeck = Deck.init()
var player1 = Player(name: "Josh")
player1.draw(from: newDeck)
player1.hand
player1.rollDice()

