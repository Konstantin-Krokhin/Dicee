//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Allows me to reference UI elements
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceArray = [UIImage(imageLiteralResourceName: "DiceOne"), UIImage(imageLiteralResourceName: "DiceTwo"), UIImage(imageLiteralResourceName: "DiceThree"), UIImage(imageLiteralResourceName: "DiceFour"), UIImage(imageLiteralResourceName: "DiceFive"), UIImage(imageLiteralResourceName: "DiceSix") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            diceImageView1.image = diceArray[Int.random(in: 0...5)]
            diceImageView2.image = diceArray[Int.random(in: 0...5)]
        }
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // WHO.WHAT = VALUE;
        
        // Randomising the value of the 
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray [Int.random(in: 0 ... 5)]
        
        
        //var arr = [45, 73, 195, 53]
        
        //print("One = \(arr[0] * arr[1]), Two = \(arr[1] * arr[2]), Three = \(arr[2] * arr[3])!!!")
    }
    
}

