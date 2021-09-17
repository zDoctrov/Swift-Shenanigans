//
//  TableCell.swift
//  tableViewStudies
//
//  Created by Zachary Doctrove on 9/16/21.
//

import UIKit

class TableCell: UITableViewCell {

    @IBOutlet weak var storyboardImage: UIImageView!
    
    func setImage(imageInCell: imageClass){
        storyboardImage.image = imageInCell.image
    }
    
}
