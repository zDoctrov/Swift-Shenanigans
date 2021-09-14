//
//  SelectionScreen.swift
//  Delegates-Protocols
//
//  Created by Sean Allen on 5/20/17.
//  Copyright © 2017 Sean Allen. All rights reserved.
//

import UIKit
//Protocol: Enabling Communication Between Objects Not Related by Inheritance
//  Protocol = Declaration of a "programmatic interface" whose methods ANY CLASS
//  can implement. Protocols are a Objective-C language feature, simply speaking a list
//  of methods any class can implement
//EX: UITableviewDatasource protocol, whose methods cellforRowAtIndexPath
//  is declared in the protocol, but we implement it for creating the tableview

//Protocol = A set of methods that a class will implement:
//  "You dpm't care which class is used, as long as it implements this protocol"
protocol SideSelectionDelegate {
    
    //Note how the protocol's methods don't have implementations,
    //  as implemntations must be done in a class that adopts the protocol
    func didTapChoice(image: UIImage, name: String, color: UIColor)
    /*
     image: UIImage = What image is displayed (Luke or Darth Vader)
     name: What text should be placed in the label ("Luke
     */
}

class SelectionScreen: UIViewController {
    
    //Deeclare the Delegate
    //Delegation: Acting on Behalf of Another Object (Design Pattern in OOP)
    //  The Object the delegate works for messages its delegate that some event
    //  is going to happen and asks for some response, so the delegate implements
    //  the method (with many other methods, under "protocol") invoked by the message
    //  and returns an appropriate value
    //EX: The appdelegate object acts on behalf of appobject
    var selectionDelegate: SideSelectionDelegate!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func imperialButtonTapped(_ sender: UIButton) {
        //Boss DELEGATES Task1 to intern on BaseScreen.swift
        selectionDelegate.didTapChoice(image: UIImage(named: "vader")!, name: "Darth Vader", color: .red)
        dismiss(animated: true, completion: nil)
    }

    @IBAction func rebelButtonTapped(_ sender: UIButton) {
        //Boss DELEGATES Task2 to intern on BaseScreen.swift
        selectionDelegate.didTapChoice(image: UIImage(named: "luke")!, name: "Luke Skywalker", color: .cyan)
        dismiss(animated: true, completion: nil)
    }
    
    
}
