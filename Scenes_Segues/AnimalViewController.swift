//
//  ViewController.swift
//  Scenes_Segues
//
//  Created by Zachary Doctrove on 5/20/21.
//

import UIKit

//animal delegate for home screen
protocol AnimalDelegate {
    func animalTapped(image: UIImage, name: String, color: UIColor)
}

//Boss class
class AnimalViewController: UIViewController {
    
    var animalDelegate: AnimalDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //!!! Weird pathing for chicken UIImage
    @IBAction func chickenTapped(_ sender: Any) {
        animalDelegate.animalTapped(image: UIImage(named: "chicken")!, name: "Cunning Rooster", color: .yellow)
        dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func cowTapped(_ sender: Any) {
        animalDelegate.animalTapped(image: UIImage(named: "cow")!, name: "Brutish Bull", color: .red)
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func pigTapped(_ sender: Any) {
        animalDelegate.animalTapped(image: UIImage(named: "pig")!, name: "Adept Hog", color: .systemPink)
        dismiss(animated: true, completion: nil)
    }
    
    
    
}

