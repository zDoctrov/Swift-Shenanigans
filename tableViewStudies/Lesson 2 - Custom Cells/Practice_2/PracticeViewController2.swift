//
//  PracticeViewController2.swift
//  tableViewStudies
//
//  Created by Zachary Doctrove on 9/16/21.
//

import UIKit

class PracticeViewController2: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var arrayOfImages: [imageClass] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        arrayOfImages = createArray()
    }
    

    func createArray () -> [imageClass]{
        var tempImageArray: [imageClass] = []
        
        let image1 = imageClass(image: UIImage(named: "Lesson_2/vlog-4")!)
        
        tempImageArray.append(image1)
        
        return tempImageArray   //Return array of images
    }
}

extension PracticeViewController2: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}

//Along with the UIKit Table View Cell File, this is the last part of setting a table view
extension PracticeViewController2: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfImages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let currentImage = arrayOfImages[indexPath.row] //select a specific image out of the array
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "p2_cell") as! TableCell //dequeue, referencing the "TableCell" UIKit Cell class
        
        cell.setImage(imageInCell: currentImage)
        
        return cell
    }
    
    
    
}
