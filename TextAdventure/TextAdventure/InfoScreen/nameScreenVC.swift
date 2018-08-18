//
//  nameScreenVC.swift
//  TextAdventure
//
//  Created by Connor Fairman on 8/18/18.
//  Copyright © 2018 connorfairman. All rights reserved.
//

import UIKit

class nameScreenVC: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        let name = self.nameTextField.text
        UserDefaults.standard.set(name, forKey: "name") // save to user defaults
    }
}
