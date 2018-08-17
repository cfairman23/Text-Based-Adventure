//
//  Page2VC.swift
//  TextAdventure
//
//  Created by Connor Fairman on 8/16/18.
//  Copyright © 2018 connorfairman. All rights reserved.
//

import UIKit

class Page2VC: UIViewController {
    
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func fightButtonWasPressed(_ sender: Any) {
        let strength = defaults.integer(forKey: "strength")
        if (strength < 1) {
            print("You lose")
        } else {
            print("You win")
        }
    }
    
    @IBAction func runButtonWasPressed(_ sender: Any) {
        print("You escaped")
    }
    
}
