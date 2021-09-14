//
//  ViewController.swift
//  tableViewStudies
//
//  Created by Zachary Doctrove on 9/14/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    //Array of contact information, such as a cell phone
    let names = [
        "John Smith",
        "Dan Smith",
        "Jason Smith",
        "Mary Smith"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //The delegate and datasource protocols for the table view are responsible
        //  for handling interactions and providing data for the table
        //The View Controller that this comment is written in acts as
        //  delegate and datasource for the table view (That's why it is assigned "self")
        tableView.delegate = self
        tableView.dataSource = self
    }

}


//Implementations of the delegate and datsource classes
extension ViewController: UITableViewDelegate {
    //Function built into this class that captures everytime a person touches a given cell (didSelectRowat indexPath)
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped me!")
    }
}

/*
For the DataSource class, you need to provide a minimum of 2 functions:
  1. numberOfRowsInSection
     return 3
      (Number of rows in table OR # of cells)
  2. cellForRowAt --> let cell = tableView.dequeueReusableCell(withIdentifier, for: ...)
     return cell
      (Place the identifier used in your table here)
 */
extension ViewController: UITableViewDataSource {
    
    /*indexPath represents the position a cell has in the table (often which row its in)
     A table is comprised of sections and rows: "Index.row" and "Index.sect"
     
        A table can have n number of sections and each of those sections can have n number of rows
        ***IF WE DON'T SUPPLY A NUMBER OF SECTIONS, THE DEFAULT IS 1
     
     (Below is the function "numberOfSections"
    */
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1 //default value, if you don't explicitly write this function
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 3
        return names.count
    }

    //Function used to improve performance by shoving our data onto a limited number of cells that are far outnumbered by the total unique cells that exist (dequeueing cells when they aren't on the screen)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        //default cell customization
        //cell.textLabel?.text = "Hello World"
        cell.textLabel?.text = names[indexPath.row]
        
        return cell
    }
}

