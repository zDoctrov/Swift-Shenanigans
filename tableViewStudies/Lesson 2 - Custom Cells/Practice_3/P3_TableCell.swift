//
//  P3_TableCell.swift
//  tableViewStudies
//
//  Created by Zachary Doctrove on 9/16/21.
//

import UIKit

class P3_TableCell: UITableViewCell {
    @IBOutlet weak var p3_imageView: UIImageView!
    
    func setCellCustomizations(cellProperties: PropertiesInArray){
        p3_imageView.image = cellProperties.image
    }

}
