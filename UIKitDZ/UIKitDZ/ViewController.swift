// ViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

class ViewController: UIViewController {
    
    var copyImageView = UIImageView()
    var copyImage = UIImage(named: "image")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addViewDidLoad()
    }
    
    private func addViewDidLoad() {
        setupImageView()
        
    }
    
    //MARK: Method Private
    
    private func setupImageView() {
        copyImageView = UIImageView(frame: CGRect(x: 70, y: 125, width: 125, height: 215))
        view.addSubview(copyImageView)
    }
    
}
