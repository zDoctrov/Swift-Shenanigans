//
//  ViewController.swift
//  Mulit-ViewController
//
//  Created by Zachary Doctrove on 5/23/21.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .red
        
    }

    @IBAction func changeViewController(_ sender: Any) {
        //present(SecondViewController(), animated: true, completion: nil)
        
        //Adding ViewController through the story board
        //  In order to keep the changes made directly on the main.storyboard
        //  you have to use the syntax below rather than the simple
        //  "let vc = GreenViewController()"
        let vc = storyboard?.instantiateViewController(identifier: "green_vc") as! GreenViewController
        
        /*  Safer connecting of ViewController to storyboard
         guard let vc = storyboard?.instantiateViewController(identifier: "green_vc") as? GreenViewController else{
            return
         }
         */
        
        present(vc, animated: true, completion: nil)
    }
    
}

///Adding a new view controller via code
//class SecondViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .blue
//
//    }
//}



