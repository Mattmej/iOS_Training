//
//  SecondViewController.swift
//  ProtocolDelegatePractice
//
//  Created by Matt Mejia on 11/15/18.
//  Copyright © 2018 Matt_Mejia. All rights reserved.
//

import UIKit

// Writing up the "contract"
protocol BDelegate {
    func userSubmittedText(item:String)
}


class SecondViewController: UIViewController {
    
    var item = ""
    
    @IBOutlet weak var textbox: UITextField!
    
    
    // Creating the delegate property inside the ViewController
    var delegate:BDelegate?

    @IBAction func submitText(_ sender: Any) {
        delegate?.userSubmittedText(item: textbox.text!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
