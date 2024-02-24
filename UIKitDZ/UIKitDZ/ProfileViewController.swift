// ProfileViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Класс профиль
final class ProfileViewController: UIViewController {
    // MARK: Constant

    enum Constant {
        static let lockLeftImageButton = "lockImageButtonLeftOne"
        static let plusImageButton = "plusImageButtonRightTwo"
        static let additionallyImageButton = "additionallyImageButtonRightOne"
        static let titleNavigationBar = "mary_rmLink"
        static let font = "Verdana-Bold"
    }

    private let titleLabel = UILabel()
    private var titleView = UIView()

    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        titleView.addSubview(titleLabel)

        setupImscriptionLeft()
        setupButtonLeft()
    }

    // MARK: - Private Methods

    private func setupImscriptionLeft() {
        titleLabel.text = "mary_rmLink"
        titleLabel.font = UIFont(name: Constant.font, size: 18)
        titleLabel.textColor = UIColor.black
        titleLabel.textAlignment = .left
        titleView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 44))
        titleView.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerYAnchor.constraint(equalTo: titleView.centerYAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: titleView.leadingAnchor, constant: 42).isActive = true
        navigationItem.titleView = titleView
    }

    private func setupButtonLeft() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            title: nil,
            image: UIImage(named: Constant.lockLeftImageButton),
            target: nil,
            action: nil
        ),
        
    }
}
