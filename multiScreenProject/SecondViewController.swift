//
//  SecondViewController.swift
//  multiScreenProject
//
//  Created by Zachary Doctrove on 5/25/21.
//

import UIKit

class SecondViewController: UIViewController {
    
    let red = Notification.Name(rawValue: redNotificationKey)
    let blue = Notification.Name(rawValue: blueNotificationKey)
    let defaultColor = Notification.Name(rawValue: defaultColorNotificationKey)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        createObservers()
    }
    //Clean up observers after the view is unloaded
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    //Create Observers
    func createObservers(){
        //red
        NotificationCenter.default.addObserver(self, selector: #selector(SecondViewController.changeBackgroundColor(notification:)), name: red, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(SecondViewController.changeBackgroundColor(notification:)), name: blue, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(SecondViewController.changeBackgroundColor(notification:)), name: defaultColor, object: nil)
    }
    
    //Create functions referenced by Observers
    @objc func changeBackgroundColor(notification: NSNotification){
        switch notification.name{
        case red:
            view.backgroundColor = .red
        case blue:
            view.backgroundColor = .blue
        case defaultColor:
            view.backgroundColor = .lightGray
        default:
            //TODO: default
            print("Error")
        }
    }

}
