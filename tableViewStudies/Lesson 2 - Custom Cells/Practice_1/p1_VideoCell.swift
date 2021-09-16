//
//  p1_VideoCell.swift
//  tableViewStudies
//
//  Created by Zachary Doctrove on 9/15/21.
//

import UIKit

class p1_VideoCell: UITableViewCell {
    @IBOutlet weak var videoImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    
    
    func setVideo (video: p1_Video){
        videoImage.image = video.image
        title.text = video.title
    }
}
