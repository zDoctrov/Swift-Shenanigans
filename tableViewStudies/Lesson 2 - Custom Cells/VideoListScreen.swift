//
//  VideoListScreen.swift
//  tableViewStudies
//
//  Created by Zachary Doctrove on 9/14/21.
//

import UIKit

class VideoListScreen: UIViewController {
    
    /*Array of data used to customize each video cell ([] = Empty Array)
        Note that the "Video" class is defined in a separate file (Video.swift)
    */
    var videos: [Video] = []
    
    @IBOutlet var videoTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Apply data from createArray function to "videos" array
        videos = createArray()
        
        //Table View Information Flow Created
        videoTableView.delegate = self
        videoTableView.dataSource = self
    }
    
    //Left off at 16:13
    func createArray() -> [Video] {
        var tempVideos: [Video] = []
        
        //Create image & title combinations
        //  let varName = Video(image: UIImage(name: STRING), title: STRING)
        let video1 = Video(image: UIImage(named: "Lesson_2/beginner-first-app")!, title: "Your First App")
        
        //Add all of these into the tempVideos array
        // arrayVar.append(varName)
        tempVideos.append(video1)
        
        return tempVideos
    }
}

extension VideoListScreen: UITableViewDelegate{
    
}

extension VideoListScreen: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    
    //"cellForRowAt indexPath: IndexPath" configures each cell as they appear, so it is constantly firing off as you scroll through a tableview
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Grabs the correct video for a given cell at the indexPath
        let video = videos[indexPath.row]
        
        //This is configured to use our custom "VideoCell" class, rather than a traditional indexPath we used in lesson 1
        let cell = tableView.dequeueReusableCell(withIdentifier: "videoCell") as! VideoCell
        
        //Calls the function in the "VideoCell" class to configure an individual cell using the specific image and title for that video
        cell.setVideo(video: video)
        
        return cell
    }
    
    
}
