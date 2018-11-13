//
//  SecondViewController.swift
//  LoginScreen
//
//  Created by Matt Mejia on 11/9/18.
//  Copyright © 2018 Matt_Mejia. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var secondView: UIView!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    var username:String? = ""
    
    @IBOutlet weak var usernameDisplay: UILabel!
    
//    @IBOutlet weak var myName: UILabel!
//    @IBOutlet weak var myOccupation: UILabel!
//    @IBOutlet weak var myHometown: UILabel!
    @IBOutlet weak var bodyText: UITextView!
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    @IBAction func segmentedController(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex
        {
            
        case 0:
            secondView.backgroundColor = UIColor.white;
//            myName.textColor = UIColor.black;
//            myOccupation.textColor = UIColor.black;
//            myHometown.textColor = UIColor.black;
            bodyText.textColor = UIColor.black;
            bodyText.backgroundColor = UIColor.white;
//            segmentControl.backgroundColor = UIColor.darkGray;
            segmentControl.backgroundColor = UIColor.white;
            segmentControl.tintColor = UIColor.darkGray;
            
        case 1:
            secondView.backgroundColor = UIColor.darkGray;
//            myName.textColor = UIColor.white;
//            myOccupation.textColor = UIColor.white;
//            myHometown.textColor = UIColor.white;
            bodyText.textColor = UIColor.white;
            bodyText.backgroundColor = UIColor.darkGray;
            segmentControl.backgroundColor = UIColor.darkGray;
            segmentControl.tintColor = UIColor.white;
            
        default:
            segmentControl.backgroundColor = UIColor.white;
            segmentControl.tintColor = UIColor.darkGray;
//            break;
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
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
