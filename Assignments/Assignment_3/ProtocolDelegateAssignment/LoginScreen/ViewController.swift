//
//  ViewController.swift
//  LoginScreen
//
//  Created by Matt Mejia on 11/9/18.
//  Copyright © 2018 Matt_Mejia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, BDelegate {
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var submittedText: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickedLogin(_ sender: Any) {
    }
    
    // Very important function.
    // Here is the logic for passing info from one view controller to the other.
    // Specifically, this function prepares for segues between the controllers.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Sets the destination of the segue as "SecondViewController"
        let vc = segue.destination as? SecondViewController
        
        // The username variable of SecondViewController will say "Hello ___!"
        vc?.username = "Hello \(usernameField.text!)"
        
        // Clears the username field in the login section
        usernameField.text = ""
        
        // Sets the "data" variable of SecondViewController as whatever the text is in the "submittedText" label in ViewController
        vc?.data = submittedText.text!
        
        // Sets ViewController as the delegate for the SecondViewController
        vc?.delegate = self
        
    }
    
    // The protocol function that this delegate is required to have.
    // Here, the "submittedText" label's text is set equal to whatever data is passed into the function when it is called.
    func displaySubmittedText(data: String) {
        submittedText.text = data
    }
    
    
    
}

