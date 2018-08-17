//
//  Page1VC.swift
//  TextAdventure
//
//  Created by Connor Fairman on 8/16/18.
//  Copyright © 2018 connorfairman. All rights reserved.
//

import UIKit

class Page1VC: UIViewController {
    
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        let storyBoard = self.storyboard?.value(forKey: "name") //get storyboard id
        let newViewController = self.restorationIdentifier //get identifier of view controller
        UserDefaults.standard.set(storyBoard, forKey: "storyBoard") // save to user defaults
        UserDefaults.standard.set(newViewController, forKey: "newViewController")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func gymButtonWasPressed(_ sender: Any) {
        let newStrength = defaults.integer(forKey: "strength") + 1
        defaults.set(newStrength, forKey: "strength")
    }
    
    @IBAction func libraryButtonWasPressed(_ sender: Any) {
        let newIntellect = defaults.integer(forKey: "intellect") + 1
        defaults.set(newIntellect, forKey: "intellect")
    }
    
    @IBAction func partyButtonWasPressed(_ sender: Any) {
        let newCharisma = defaults.integer(forKey: "charisma") + 1
        defaults.set(newCharisma, forKey: "charisma")
    }
    
    override func viewDidAppear(_ animated: Bool) {
    }
    
}
