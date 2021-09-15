//
//  PracticeViewController_3.swift
//  tableViewStudies
//
//  Created by Zachary Doctrove on 9/14/21.
//

import UIKit

class PracticeViewController_3: UIViewController {
    
    @IBOutlet var tableView3: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView3.delegate = self
        tableView3.dataSource = self
    }
}

extension PracticeViewController_3: UITableViewDelegate{
    
}

extension PracticeViewController_3: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView3.dequeueReusableCell(withIdentifier: "cell3", for: indexPath)
        
        cell.textLabel?.text = "Without a dream in my heart"
        
        return cell
    }
    
    
}
