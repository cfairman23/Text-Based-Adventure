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
        var storyboard = self.storyboard?.value(forKey: "name") {
            didSet {
                DispatchQueue.main.async {
                    UserDefaults.standard.set(storyboard, forKey: "storyBoard") // save to user defaults
                }
            }
        }
        var newViewController = self.restorationIdentifier {
            didSet {
                DispatchQueue.main.async {
                    UserDefaults.standard.set(newViewController, forKey: "viewController")
                }
            }
        }
        UserDefaults.standard.synchronize()
        dismiss(animated: true, completion: nil)
        NotificationCenter.default.post(name: Notification.Name("yesButtonClicked"), object: nil)
    }
}
