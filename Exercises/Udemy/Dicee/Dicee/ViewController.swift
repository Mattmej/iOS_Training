//
//  ViewController.swift
//  Dicee
//
//  Created by Matt Mejia on 11/18/18.
//  Copyright © 2018 Matt_Mejia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // Generates random numbers from 0 to 6-1 (0 to 5)
        // UInt32 is a data type that can only be positive
        // It is a 32-bit number.
        // We can "cast" the variable and turn it into an Int
        randomDiceIndex1 = Int(arc4random_uniform(6))
        
        // Same as above.
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        print(randomDiceIndex1)
        
        diceImageView1.image = UIImage(named: "dice2")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

