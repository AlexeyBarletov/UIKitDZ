// ViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

class ViewController: UIViewController {
    var exampleAlertController = UIAlertController()
    var exampleUIimageView = UIImageView()
    var exampleUIImage = UIImage(named: "background")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUIimageView()
    }
    
    func setupUIimageView() {
        exampleUIimageView = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        exampleUIimageView.image = exampleUIImage
        view.addSubview(exampleUIimageView)
    }
}
