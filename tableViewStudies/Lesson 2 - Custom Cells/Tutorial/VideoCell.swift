//
//  VideoCell.swift
//  tableViewStudies
//
//  Created by Zachary Doctrove on 9/15/21.
//

import UIKit

class VideoCell: UITableViewCell {

    //Image & Label outlets
    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    func setVideo(video: Video){
        videoImageView.image = video.image
        videoTitleLabel.text = video.title
    }
}
