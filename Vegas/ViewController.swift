//
//  ViewController.swift
//  Vegas
//
//  Created by Michail Mishev on 10/12/17.
//  Copyright © 2017 Michail Mishev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rollTheDices()
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    func rollTheDices() {
        
        let randomNum1 = Int(arc4random_uniform(6))
        let randomNum2 = Int(arc4random_uniform(6))
        
//        print(randomNum1)
//        print(randomNum2)
        
//        print(diceArray[randomNum1])
        
        diceImage1.image = UIImage(named: diceArray[randomNum1])
        diceImage2.image = UIImage(named: diceArray[randomNum2])
        
    }
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        rollTheDices()
        
    }
    
    
    @IBAction func buttonPressd(_ sender: Any) {
        
        rollTheDices()
        
    }
    
    
}

