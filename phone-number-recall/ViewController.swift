//
//  ViewController.swift
//  phone-number-recall
//
//  Created by Jen Homann on 12/4/17.
//  Copyright © 2017 Jen Homann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var phoneField: UITextField!
    @IBOutlet var phoneLabel: UILabel!
    @IBAction func saveButton(_ sender: Any) {
        if phoneLabel.text != nil {
            UserDefaults.standard.set(phoneField.text, forKey: "phone")
            getPhoneNumber()
        } else {
            phoneLabel.text = "You must enter a phone number to save!"
        }
    }
    
    func getPhoneNumber() {
        let phoneObject = UserDefaults.standard.object(forKey: "phone")
        if let phone = phoneObject as? String {
            phoneLabel.text = "Your saved phone # is \(phone)."
        } else {
            phoneLabel.text = "No # stored. Enter one below."
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        getPhoneNumber()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

