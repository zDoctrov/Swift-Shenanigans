//
//  VideoListScreen.swift
//  tableViewStudies
//
//  Created by Zachary Doctrove on 9/14/21.
//

import UIKit

class VideoListScreen: UIViewController {
    
    @IBOutlet var videoTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        videoTableView.delegate = self
        videoTableView.dataSource = self
    }
}

extension VideoListScreen: UITableViewDelegate{
    
}

extension VideoListScreen: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "videoCell", for: indexPath)
        
        cell.textLabel?.text = "Here be videos"
        
        return cell
    }
    
    
}
