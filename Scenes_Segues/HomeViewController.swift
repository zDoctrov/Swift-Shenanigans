//
//  FinalViewController.swift
//  Scenes_Segues
//
//  Created by Zachary Doctrove on 5/20/21.
//

import UIKit


//Intern Class
class HomeViewController: UIViewController {

    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var animalLabel: UILabel!
    @IBOutlet var homeView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
    }
    
        
    @IBAction func makeSelection(_ sender: Any) {
        
        //Open animal view controller
        let vc = storyboard?.instantiateViewController(identifier: "animal_vc") as! AnimalViewController
        
        vc.animalDelegate = self
        
        present(vc, animated: true, completion: nil)
    }
    
}

extension HomeViewController: AnimalDelegate{
    func animalTapped(image: UIImage, name: String, color: UIColor) {
        animalImage.image = image
        animalLabel.text = name
        homeView.backgroundColor = color
    }
}
