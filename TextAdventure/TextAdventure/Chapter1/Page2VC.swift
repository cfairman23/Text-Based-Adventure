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
            let storyBoard: UIStoryboard = UIStoryboard(name: "LoseSB", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "LoseVC") as! LoseVC
            if let navigator = navigationController {
                navigator.pushViewController(newViewController, animated: true)
            }
        } else {
            let storyBoard: UIStoryboard = UIStoryboard(name: "WinSB", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "WinVC") as! WinVC
            if let navigator = navigationController {
                navigator.pushViewController(newViewController, animated: true)
            }
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let storyboard = self.storyboard?.value(forKey: "name")
        UserDefaults.standard.set(storyboard, forKey: "storyBoard") // save to user defaults
        let newViewController = self.restorationIdentifier
        UserDefaults.standard.set(newViewController, forKey: "viewController")
    }
    
}
