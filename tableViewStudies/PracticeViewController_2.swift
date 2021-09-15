//
//  PracticeViewController_2.swift
//  tableViewStudies
//
//  Created by Zachary Doctrove on 9/14/21.
//

import UIKit

//Make sure you're using a "UIViewController" rather than a regular "ViewController"
class PracticeViewController_2: UIViewController {
    
    @IBOutlet var tableView2: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView2.delegate = self
        tableView2.dataSource = self
    }

}

extension PracticeViewController_2: UITableViewDelegate{
    //Selected this row
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Remember, if you right click a UIKit class then you can choose 'Jump to Definition' in order to see its functions")
    }
}

extension PracticeViewController_2: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView2.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)
        
        cell.textLabel?.text = "There are many benefits to being a marine biologist"
        
        return cell
    }
    
    
    
}
