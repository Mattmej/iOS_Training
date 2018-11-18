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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? SecondViewController
        vc?.username = "Hello \(usernameField.text!)"
        usernameField.text = ""
        vc?.data = submittedText.text!
        vc?.delegate = self
        
    }
    
    func displaySubmittedText(data: String) {
        submittedText.text = data
    }
    
    
    
}

