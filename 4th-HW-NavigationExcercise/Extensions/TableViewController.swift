//
//  TableViewController.swift
//  4th-HW-NavigationExcercise
//
//  Created by Consultant on 6/7/22.
//

import UIKit

class TableViewController: UITableViewController {

    var groceryList: [String] = []
    var selectedName: String = ""
    
    // making this a weak variable so that it won't create a strong reference cycle
    var delegate: shareString? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return groceryList.count
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           
           if self.delegate != nil
           {
               // call this method on whichever class implements our delegate protocol
               delegate?.sendStringInvoke(data: groceryList[indexPath.row])
               // go back to the previous view controller
               self.navigationController?.popViewController(animated: true)
           }
           else{
               print("Delegate is nil")
           }
       }
       
       
       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
           let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
           //Configure the cell...
           cell.textLabel?.text = groceryList[indexPath.row]
           return cell
       }

}
