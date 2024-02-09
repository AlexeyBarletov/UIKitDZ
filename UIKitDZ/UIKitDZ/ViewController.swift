// ViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

class ViewController: UIViewController {
    @IBOutlet var showButtonOutlet: UIButton!
    @IBOutlet var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("")
    }

    //MARK: method button
    
    @IBAction func showTextButton(_ sender: Any) {
        textField.isSecureTextEntry = !showButtonOutlet.isSelected
        showButtonOutlet.isSelected = !showButtonOutlet.isSelected
    }
}
