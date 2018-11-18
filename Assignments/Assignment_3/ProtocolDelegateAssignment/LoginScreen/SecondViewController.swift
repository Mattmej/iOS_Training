//
//  SecondViewController.swift
//  LoginScreen
//
//  Created by Matt Mejia on 11/9/18.
//  Copyright © 2018 Matt_Mejia. All rights reserved.
//

import UIKit

protocol BDelegate {
    func displaySubmittedText(data:String)
}

class SecondViewController: UIViewController {
    
    var delegate:BDelegate?
    var data = ""
    @IBOutlet weak var textbox: UITextField!
    
    @IBOutlet var secondView: UIView!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    var username:String? = ""
    
    @IBOutlet weak var usernameDisplay: UILabel!
    

    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    @IBAction func segmentedController(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex
        {
            
        case 0:
            secondView.backgroundColor = UIColor.white;
            segmentControl.backgroundColor = UIColor.white;
            segmentControl.tintColor = UIColor.darkGray;
            
        case 1:
            secondView.backgroundColor = UIColor.darkGray;
            segmentControl.backgroundColor = UIColor.darkGray;
            segmentControl.tintColor = UIColor.white;
            
        default:
            segmentControl.backgroundColor = UIColor.white;
            segmentControl.tintColor = UIColor.darkGray;
//            break;
        }
    }
    
    // What happens when the user presses the "submit" button
    @IBAction func submitText(_ sender: Any) {
        
        // The delegate will perform the "displaySubmittedText" function with the passed in data being the text of the textbox.
        delegate?.displaySubmittedText(data: textbox.text!)
        
        // This view controller will "pop" itself.
        navigationController?.popViewController(animated: true)
    }
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // When this page loads, set the usernameDisplay's text equal to whatever is in the "username" variable.
        // The value was changed in the first ViewController.
        usernameDisplay.text = username
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
