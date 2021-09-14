//
//  ViewController.swift
//  multiScreenProject
//
//  Created by Zachary Doctrove on 5/25/21.
//

import UIKit

//Global notification keys
let redNotificationKey = "zac.doctrove.red"
let blueNotificationKey = "zac.doctrove.blue"
let defaultColorNotificationKey = "zac.doctrove.defaultColor"

class SelectionViewController: UIViewController {
    
    
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    
    //TODO: Add a default button that
    //  returns screens to Gray/Black/White
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Clean up observers after the view is unloaded
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    //Post Notifications so that other screens
    //  will know to change their view's background
    //  color
    @IBAction func redButtonTapped(_ sender: Any) {
        //Change current background
        view.backgroundColor = .red
        
        //Create and Post notification to change
        //  other ViewController backgrounds
        let name = Notification.Name(rawValue: redNotificationKey)
        
        NotificationCenter.default.post(name: name, object: nil)
    }
    
    @IBAction func blueButtonTapped(_ sender: Any) {
        //Change current background
        view.backgroundColor = .blue
        
        //Create and Post notification to change
        //  other ViewController backgrounds
        let name = Notification.Name(rawValue: blueNotificationKey)
        
        NotificationCenter.default.post(name: name, object: nil)
    }
    
    @IBAction func defaultButtonTapped(_ sender: Any) {
        //Change current background
        view.backgroundColor = .white
        
        //Create and Post notification to change
        //  other ViewController backgrounds
        let name = Notification.Name(rawValue: defaultColorNotificationKey)
        
        NotificationCenter.default.post(name: name, object: nil)
    }
    
    
}

