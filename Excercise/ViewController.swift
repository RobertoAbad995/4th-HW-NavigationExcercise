//
//  ViewController.swift
//  Excercise
//  Created by Consultant on 6/7/22.
//

import UIKit

class ViewController: UIViewController, DataEnteredDelegate {

    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var txtNewItem: UITextField!
    
    var groceryList = [String]()
    let vc = TableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        vc.delegate = self
        vc.groceryList = groceryList
        displayLabel.text = ""
    }

    @IBAction func didTapFirstButton(_ sender: Any) {
        vc.groceryList = groceryList
        vc.reloadData()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func userDidEnterInformation(info: String) {
        displayLabel.text = "Item selected was: " + info
    }
    
    @IBAction func btnAddNewItem(_ sender: Any) {
        
        if let txt = txtNewItem.text {
            groceryList.append(contentsOf: [txt])
            txtNewItem.text = ""
        }
    }
}

