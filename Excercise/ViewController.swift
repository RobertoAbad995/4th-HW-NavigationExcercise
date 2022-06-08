//
//  ViewController.swift
//  Excercise
//
//  Created by Consultant on 6/7/22.
//

import UIKit

class ViewController: UIViewController, DataEnteredDelegate {

    @IBOutlet weak var displayLabel: UILabel!
    let vc = TableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        vc.delegate = self
        displayLabel.text = ""
    }

    @IBAction func didTapFirstButton(_ sender: Any) {
        vc.groceryList = [
            "Apples",
            "Papaya",
            "Tomatoes",
            "Carrots",
            "Cigarrettes",
            "Cereal",
            "Milk",
            "Coffe"
        ]
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func userDidEnterInformation(info: String) {
        displayLabel.text = "Item selected was: " + info
    }
}

