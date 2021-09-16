//
//  VideoListScreen.swift
//  tableViewStudies
//
//  Created by Zachary Doctrove on 9/14/21.
//

import UIKit

class VideoListScreen: UIViewController {
   
    @IBOutlet var videoTableView: UITableView!
    
    /*Array of data used to customize each video cell ([] = Empty Array)
        Note that the "Video" class is defined in a separate file (Video.swift)
    */
    var videos: [Video] = []
    
    //(Tangent: Messing Around with Arrays)
    var Formalities: [String] = ["Hello", "Sayonara"]


    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Apply data from createArray function to "videos" array
        videos = createArray()
        
        //Table View Information Flow Created
        videoTableView.delegate = self
        videoTableView.dataSource = self
        
        //(Tangent: Messing Around with Arrays)
        print(Formalities[1])
    }
    
    //Left off at 16:13
    func createArray() -> [Video] {
        var tempVideos: [Video] = []
        
        //Create image & title combinations
        //  let varName = Video(image: UIImage(name: STRING), title: STRING)
        let video1 = Video(image: UIImage(named: "Lesson_2/beginner-first-app")!, title: "Build Your First App")
        let video2 = Video(image: UIImage(named: "Lesson_2/dev-setup")!, title: "Development Setup")
        let video3 = Video(image: UIImage(named: "Lesson_2/int-overview")!, title: "iOS Interview Questions")
        let video4 = Video(image: UIImage(named: "Lesson_2/ss-delegates")!, title: "UIButtons in UITableViewCell")
        let video5 = Video(image: UIImage(named: "Lesson_2/ss-uipickerview-card")!, title: "UIPickerView Tutorial")
        let video6 = Video(image: UIImage(named: "Lesson_2/vlog-4")!, title: "iOS Contractor Typical Day")
        
        //Add all of these into the tempVideos array
        // arrayVar.append(varName)
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video4)
        tempVideos.append(video5)
        tempVideos.append(video6)
        
        return tempVideos
    }
}

extension VideoListScreen: UITableViewDelegate{
    
    //Changes the height of each row, so that the image and title aren't as crammed
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90.0
    }
    
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
