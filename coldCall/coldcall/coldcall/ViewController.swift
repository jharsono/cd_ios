//
//  ViewController.swift
//  coldcall
//
//  Created by Josh Harsono on 3/7/18.
//  Copyright © 2018 Josh Harsono. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var names = ["Harry", "Ron", "Hermione","Dumbledore","Hagrid","Voldemort","Snape","Draco","Sirius","Myrtle","Luna"]
    var currentCall = 0
    var number = arc4random_uniform(5) + 1
    @IBOutlet weak var namesLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func coldCallButton(_ sender: Any) {
        currentCall = Int(arc4random_uniform(11))
        updateUI()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        namesLabel.text = "Ready?"
        numberLabel.text = " "
    }
    
    func updateUI() {
        namesLabel.text = names[currentCall]
        number = arc4random_uniform(5) + 1
        if (number == 1 || number == 2) {
            numberLabel.textColor = UIColor.red
        } else if (number == 3 || number == 4) {
            numberLabel.textColor = UIColor.orange
        } else {
            numberLabel.textColor = UIColor.green
        }
        numberLabel.text = String(number)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

