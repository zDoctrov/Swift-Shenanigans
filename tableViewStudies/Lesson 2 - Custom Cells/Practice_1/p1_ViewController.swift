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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        p1_tableView.delegate = self
        p1_tableView.dataSource = self
    }

}

extension p1_ViewController: UITableViewDelegate{
    
}

extension p1_ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3    //Change to array.count later
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let p1_cell = tableView.dequeueReusableCell(withIdentifier: "p1_cell", for: indexPath)
        
        p1_cell.textLabel?.text = "Placeholder Cells"
        
        return p1_cell
    }
    
    
}
