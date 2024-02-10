// ViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

class ViewController: UIViewController {
    // MARK: IBOutlet

    @IBOutlet private var showButtonOutlet: UIButton!
    @IBOutlet private var textField: UITextField!

    // MARK: IBAction

    @IBAction private func showTextButton(_ sender: Any) {
        textField.isSecureTextEntry = !showButtonOutlet.isSelected
        showButtonOutlet.isSelected = !showButtonOutlet.isSelected
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        textField.isSecureTextEntry = true
    }
}
