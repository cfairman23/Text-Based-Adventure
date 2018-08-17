//
//  ViewController.swift
//  TextAdventure
//
//  Created by Connor Fairman on 8/16/18.
//  Copyright © 2018 connorfairman. All rights reserved.
//

import UIKit

class HomeScreenVC: UIViewController {
    
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        
        super.viewDidLoad()
        defaults.set(0, forKey: "strength")
        defaults.set(0, forKey: "intellect")
        defaults.set(0, forKey: "charisma")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
}

