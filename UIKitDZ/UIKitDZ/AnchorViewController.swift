// AnchorViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Класс для работы с Anchor
final class AnchorViewController: UIViewController {
    // MARK: Private Properties

    private let redView = UIView()
    private let greenView = UIView()
    private let yellowView = UIView()
    private let mainBlackView = UIView()

    // MARK: Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        addConstraints()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        greenView.layer.cornerRadius = greenView.bounds.height / 2
        yellowView.layer.cornerRadius = yellowView.bounds.height / 2
        redView.layer.cornerRadius = redView.bounds.height / 2
    }

    // MARK: Private Methode

    private func addConstraints() {
        addConstrainsRedView()
        addConstrainsGreenView()
        addConstrainsYellowView()
        addConstrainsyMainBlackView()
    }

    private func addConstrainsRedView() {
        redView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        redView.bottomAnchor.constraint(equalTo: yellowView.topAnchor, constant: -8).isActive = true
        redView.widthAnchor.constraint(equalTo: yellowView.widthAnchor).isActive = true
        redView.heightAnchor.constraint(equalTo: yellowView.heightAnchor).isActive = true
    }

    private func addConstrainsGreenView() {
        greenView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        greenView.widthAnchor.constraint(equalTo: yellowView.widthAnchor).isActive = true
        greenView.heightAnchor.constraint(equalTo: yellowView.heightAnchor).isActive = true
        greenView.topAnchor.constraint(equalTo: yellowView.bottomAnchor, constant: 8).isActive = true
    }

    private func addConstrainsYellowView() {
        yellowView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        yellowView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        yellowView.widthAnchor.constraint(equalTo: yellowView.heightAnchor).isActive = true
        yellowView.heightAnchor.constraint(lessThanOrEqualToConstant: 110).isActive = true
        let copyYellowView = yellowView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25)
        copyYellowView.priority = .defaultLow
        copyYellowView.isActive = true
    }

    private func addConstrainsyMainBlackView() {
        mainBlackView.trailingAnchor.constraint(equalTo: redView.trailingAnchor, constant: 25).isActive = true
        mainBlackView.leadingAnchor.constraint(equalTo: redView.leadingAnchor, constant: -25).isActive = true
        mainBlackView.topAnchor.constraint(equalTo: redView.topAnchor, constant: -15).isActive = true
        mainBlackView.bottomAnchor.constraint(equalTo: greenView.bottomAnchor, constant: 15).isActive = true
    }

    private func setupView() {
        for item in [mainBlackView, redView, yellowView, greenView] {
            view.addSubview(item)
            item.translatesAutoresizingMaskIntoConstraints = false
            redView.backgroundColor = .red
            greenView.backgroundColor = .green
            yellowView.backgroundColor = .yellow
            mainBlackView.backgroundColor = .gray
        }
    }
}
