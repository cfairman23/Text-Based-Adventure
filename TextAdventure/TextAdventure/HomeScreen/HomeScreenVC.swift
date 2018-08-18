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
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.startAdventure), name: Notification.Name("yesButtonClicked"), object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: Notification.Name("yesButtonClicked"), object: nil)
    }
    
    @IBAction func resumeButtonWasPressed(_ sender: Any) {
        let sb = defaults.string(forKey: "storyBoard")
        let vc = defaults.string(forKey: "viewController")
        let storyBoard : UIStoryboard = UIStoryboard(name: sb!, bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: vc!)
        self.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    @objc func startAdventure() {
        defaults.set(0, forKey: "strength")
        defaults.set(0, forKey: "intellect")
        defaults.set(0, forKey: "charisma")
        let storyBoard : UIStoryboard = UIStoryboard(name: "InfoStoryBoard", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "InfoScreenVC")
        self.navigationController?.pushViewController(newViewController, animated: true)
    }
    override func viewDidAppear(_ animated: Bool) {
        let sb = defaults.string(forKey: "storyBoard")
        let vc = defaults.string(forKey: "viewController")
        print(sb!)
        print(vc!)
    }
}

