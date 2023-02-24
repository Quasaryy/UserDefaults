//
//  ViewController.swift
//  UserDefaults
//
//  Created by Yury on 25.02.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.placeholder = "Enter any text"
        view.backgroundColor = .systemGray6
        button.setTitle("Save", for: .normal)
        label.text = UserDefaults.standard.string(forKey: "textField")
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        UserDefaults.standard.set(textField.text, forKey: "textField")
        label.text = UserDefaults.standard.value(forKey: "textField") as? String ?? ""
    }
    
}

