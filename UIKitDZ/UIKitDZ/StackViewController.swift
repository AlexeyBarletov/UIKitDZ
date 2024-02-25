// StackViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Класс для работы со StackView
final class StackViewController: UIViewController {
    // MARK: Private Properties

    private let redView = CustomView()
    private let yellowView = CustomView()
    private let greenView = CustomView()
    private let grayView = UIView()
    private var stackView = UIStackView()

    // MARK: Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupGreyView()
        setupStackView()
    }

    private func setupView() {
        stackView = UIStackView(arrangedSubviews: [redView, yellowView, greenView])
        view.addSubview(grayView)
        view.addSubview(stackView)
        redView.backgroundColor = .red
        greenView.backgroundColor = .green
        yellowView.backgroundColor = .yellow
        grayView.backgroundColor = .gray
    }

    private func setupStackView() {
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.heightAnchor.constraint(lessThanOrEqualToConstant: 376).isActive = true // меньше или ровно 376
        let copyStackView = stackView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.50)
        copyStackView.priority = .defaultLow
        copyStackView.isActive = true
        stackView.widthAnchor.constraint(equalTo: stackView.heightAnchor, multiplier: 0.33).isActive = true
    }

    private func setupGreyView() {
        grayView.translatesAutoresizingMaskIntoConstraints = false
        grayView.leadingAnchor.constraint(equalTo: yellowView.leadingAnchor, constant: -25).isActive = true
        grayView.trailingAnchor.constraint(equalTo: yellowView.trailingAnchor, constant: 25).isActive = true
        grayView.topAnchor.constraint(equalTo: redView.topAnchor, constant: -25).isActive = true
        grayView.bottomAnchor.constraint(equalTo: greenView.bottomAnchor, constant: 25).isActive = true
    }
}
