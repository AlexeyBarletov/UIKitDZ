// RibbonViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

class RibbonViewController: UIViewController {
    enum Constant {
        static let textLabel = "RMLink"
        static let customFont = "Dancing Script"
        static let image = "Icon"
    }

    let customLabel = UILabel()
    var textLabelNavigationBar = UILabel()
    var customLeftButtton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.tabBarItem.title = "Лента"
        tuneCustomElementNavigationBar()
    }

    private func tuneCustomElementNavigationBar() {
        textLabelNavigationBar.text = Constant.textLabel
        textLabelNavigationBar.font = UIFont(name: Constant.customFont, size: 22)
        textLabelNavigationBar.textColor = UIColor.black
        textLabelNavigationBar.textAlignment = .left
        let customBarButtonItem = UIBarButtonItem(customView: textLabelNavigationBar)
        navigationItem.leftBarButtonItem = customBarButtonItem

        let customButton = UIBarButtonItem(customView: customLeftButtton)
        customLeftButtton.setImage(UIImage(named: Constant.image), for: .normal)
        navigationItem.rightBarButtonItem = customButton
    }
}
