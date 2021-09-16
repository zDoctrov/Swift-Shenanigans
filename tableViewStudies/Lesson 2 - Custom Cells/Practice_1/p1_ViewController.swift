//
//  p1_ViewController.swift
//  tableViewStudies
//
//  Created by Zachary Doctrove on 9/15/21.
//

import UIKit

class p1_ViewController: UIViewController {
    
    @IBOutlet weak var p1_tableView: UITableView!
    
    //Array of a custom class called "Video" which contains images (UIImage and titles (Strings)
    var videoArray: [p1_Video] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        p1_tableView.delegate = self
        p1_tableView.dataSource = self
        
        videoArray = createArray()
    }
    
    func createArray() -> [p1_Video] {
        var tempArray: [p1_Video] = []
        
        let video1 = p1_Video(image: UIImage(named: "Lesson_2/beginner-first-app")!, title: "Build Your First App")
        
        tempArray.append(video1)
        
        return tempArray
    }

}

extension p1_ViewController: UITableViewDelegate{
    
    //Optional Function
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    
}

extension p1_ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videoArray.count    //Change to array.count later
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let currentVideo = videoArray[indexPath.row] //Choose the right array element for the current cell's cells data (0, 1, 2, 3, 4)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "p1_cell") as! p1_VideoCell
        
        cell.setVideo(video: currentVideo)
        
        return cell
    }
}
