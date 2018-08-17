//
//  AreYouSureStartVC.swift
//  TextAdventure
//
//  Created by Connor Fairman on 8/17/18.
//  Copyright © 2018 connorfairman. All rights reserved.
//

import UIKit

class AreYouSureStartVC: UIViewController {
    
    let defaults = UserDefaults.standard
    
    @IBOutlet weak var popupView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.popupView.layer.masksToBounds = true
        self.popupView.layer.cornerRadius = 7
        
        let sb = defaults.string(forKey: "storyBoard")
        let vc = defaults.string(forKey: "viewController")
        print(sb!)
        print(vc!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func dismissPopup(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func noClicked(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func yesClicked(_ sender: Any) {
        let storyboard = "InfoStoryBoard" //get storyboard id
        let newViewController = "InfoScreenVC" //get identifier of view controller
        UserDefaults.standard.set(storyboard, forKey: "storyBoard") // save to user defaults
        UserDefaults.standard.set(newViewController, forKey: "viewController")
        dismiss(animated: true, completion: nil)
        NotificationCenter.default.post(name: Notification.Name("yesButtonClicked"), object: nil)
    }
}
