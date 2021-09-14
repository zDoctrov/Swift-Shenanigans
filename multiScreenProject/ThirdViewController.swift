//
//  ThirdViewController.swift
//  multiScreenProject
//
//  Created by Zachary Doctrove on 5/25/21.
//

import UIKit

class ThirdViewController: UIViewController {
    
    let red = Notification.Name(rawValue: redNotificationKey)
    let blue = Notification.Name(rawValue: blueNotificationKey)
    let defaultColor = Notification.Name(rawValue: defaultColorNotificationKey)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        createObservers()
    }
    //Clean up leftover observers after closing ViewController
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    func createObservers(){
        //Red button pressed
        NotificationCenter.default.addObserver(self, selector: #selector(ThirdViewController.changeBackgroundColor(notification:)), name: red, object: nil)
        
        //Blue button pressed
        NotificationCenter.default.addObserver(self, selector: #selector(ThirdViewController.changeBackgroundColor(notification:)), name: blue, object: nil)
        
        //Default button pressed
        NotificationCenter.default.addObserver(self, selector: #selector(ThirdViewController.changeBackgroundColor(notification:)), name: defaultColor, object: nil)
        
    }
    
    @objc func changeBackgroundColor(notification: NSNotification){
        switch notification.name{
        case red:
            view.backgroundColor = .red
        case blue:
            view.backgroundColor = .blue
        case defaultColor:
            view.backgroundColor = .black
        default:
            print("Error")
        }
        
    }

}
