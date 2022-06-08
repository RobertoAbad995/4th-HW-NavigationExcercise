//
//  ViewController.swift
//  4th-HW-NavigationExcercise
//
//  Created by Consultant on 6/7/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var displayLabel: UILabel!
    let vc = TableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
    }
    
    @objc func didTapFirstButton(_ sender: Any) {
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
        displayLabel.text = info
    }

}
