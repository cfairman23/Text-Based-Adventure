//
//  InfoScreenVC.swift
//  TextAdventure
//
//  Created by Connor Fairman on 8/17/18.
//  Copyright © 2018 connorfairman. All rights reserved.
//

import UIKit

class InfoScreenVC: UIViewController {
    
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sb = defaults.string(forKey: "storyBoard")
        let vc = defaults.string(forKey: "viewController")
        print(sb!)
        print(vc!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let storyboard = self.storyboard?.value(forKey: "name") //get storyboard id
        let newViewController = self.restorationIdentifier //get identifier of view controller
        UserDefaults.standard.set(storyboard, forKey: "storyBoard") // save to user defaults
        UserDefaults.standard.set(newViewController, forKey: "viewController")
    }
}
