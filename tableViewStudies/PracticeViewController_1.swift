//
//  PracticeViewController_1.swift
//  tableViewStudies
//
//  Created by Zachary Doctrove on 9/14/21.
//

import UIKit

class PracticeViewController_1: UIViewController {
    
    @IBOutlet var tableView1: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView1.delegate = self
        tableView1.dataSource = self
    }
    
}

extension PracticeViewController_1: UITableViewDelegate {
    
    //didSelectRowAt (User tapped a tableview cell
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Skippity bop mmm dada")
    }
}

extension PracticeViewController_1: UITableViewDataSource {
    
    //numberOfRowsInSection
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    //numberOfSections
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        
        cell.textLabel?.text = "What is the meaning of this!?"
        
        return cell
    }
    
}
