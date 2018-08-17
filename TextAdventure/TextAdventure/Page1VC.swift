//
//  Page1VC.swift
//  TextAdventure
//
//  Created by Connor Fairman on 8/16/18.
//  Copyright © 2018 connorfairman. All rights reserved.
//

import UIKit

class Page1VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func gymButtonWasPressed(_ sender: Any) {
        UserDefaults.standard.set(1, forKey: "strength")
    }
    
    @IBAction func libraryButtonWasPressed(_ sender: Any) {
        UserDefaults.standard.set(1, forKey: "intellect")
    }
    
    @IBAction func partyButtonWasPressed(_ sender: Any) {
        UserDefaults.standard.set(1, forKey: "charisma")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let strength = UserDefaults.standard.object(forKey: "strength") {
            print(strength)
        }
        if let intellect = UserDefaults.standard.object(forKey: "intellect") {
            print(intellect)
        }
        if let charisma = UserDefaults.standard.object(forKey: "charisma") {
            print(charisma)
        }
    }
    
}
