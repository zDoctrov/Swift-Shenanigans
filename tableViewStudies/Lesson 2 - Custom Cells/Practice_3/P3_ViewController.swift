//
//  P3_ViewController.swift
//  tableViewStudies
//
//  Created by Zachary Doctrove on 9/16/21.
//

import UIKit

class P3_ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var arrayOfProperties: [PropertiesInArray] = [] //Empty Array
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       arrayOfProperties = createArray()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func createArray () -> [PropertiesInArray]{
        var tempArrayOfProperties: [PropertiesInArray] = []
        
        let cellProperties1 = PropertiesInArray(image: UIImage(named: "Lesson_2/vlog-4")!)
        
        tempArrayOfProperties.append(cellProperties1)
        
        return tempArrayOfProperties
    }
}

extension P3_ViewController: UITableViewDelegate{
    
}

extension P3_ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfProperties.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellProperty = arrayOfProperties[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "p3_cell") as! P3_TableCell
        
        cell.setCellCustomizations(cellProperties: cellProperty)
        
        return cell
    }
    
    
}
