//
//  BaseScreen.swift
//  Delegates-Protocols
//
//  Created by Sean Allen on 5/20/17.
//  Copyright © 2017 Sean Allen. All rights reserved.
//

import UIKit

class BaseScreen: UIViewController {

    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var chooseButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // chooseButton.layer.cornerRadius = chooseButton.frame.size.height/2
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    @IBAction func chooseButtonTapped(_ sender: UIButton) {
        
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "SelectionScreen") as! SelectionScreen
        
        //Message sent out from "selectionDelegate" are received
        //  at the class that contains this ".delegate = self" code
        //"selectionVC", you have a var called "selectionDelegate" which
        //  is your intern. The base screen is saying "I want to be your intern"
        //  (Remember, delegates can only speak to one receiver!)
        selectionVC.selectionDelegate = self
        
        present(selectionVC, animated: true, completion: nil)
    }
    
}

//The protocol "SideSelectionDelegate" has the "didTapChoice" function
//  implemented in the class "BaseScreen"
// (the 'extension' keyword is just a way to keep the inside of class tidy & encapsulated)
extension BaseScreen: SideSelectionDelegate {
    
    func didTapChoice(image: UIImage, name: String, color: UIColor) {
        mainImageView.image = image
        nameLabel.text = name
        view.backgroundColor = color
    }
    
}
