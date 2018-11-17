//
//  ViewController.swift
//  ProtocolDelegatePractice
//
//  Created by Matt Mejia on 11/15/18.
//  Copyright © 2018 Matt_Mejia. All rights reserved.
//

import UIKit

// We need to make it so that this ViewController abides by the contract that the SecondViewController wrote.
class ViewController: UIViewController, BDelegate {
    
    @IBOutlet weak var userText: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // The class's "qualifications" for the job contract
    func userSubmittedText(item:String) {
//        userText.text = SecondViewController.textbox.text
        userText.text = item
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destinationVC = segue.destination as! SecondViewController
        destinationVC.item = userText.text!
        
        destinationVC.delegate = self
    }


}

