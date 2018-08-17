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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func startButtonWasPressed(_ sender: Any) {
        defaults.set(0, forKey: "strength")
        defaults.set(0, forKey: "intellect")
        defaults.set(0, forKey: "charisma")
    }
    
    @IBAction func resumeButtonWasPressed(_ sender: Any) {
        let sb = defaults.string(forKey: "storyBoard")
        let vc = defaults.string(forKey: "viewController")
        let storyBoard : UIStoryboard = UIStoryboard(name: sb!, bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: vc!)
        if let navigator = navigationController {
            navigator.pushViewController(newViewController, animated: true)
        }
    }
}

