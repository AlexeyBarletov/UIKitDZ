// ShoeSizeViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

protocol DataDelegate: AnyObject {
    func translitionInfo(characteristics: Info)
}

/// класс для выбора размера
class ShoeSizeViewController: UIViewController {
    // MARK: Private Property

    private var listSize = ["35 EU", "36 EU", "37 EU", "38 EU", "39 EU"]
    private var closeButton = UIButton()
    private weak var copyDelegate: DataDelegate?

    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setLine()
        setSizeButton()
        setupCloseButton()
    }

    // MARK: Private Methode

    private func setLine() {
        var startTop = 103
        for _ in 1 ... 5 {
            let lineView = UIView()
            view.addSubview(lineView)
            lineView.backgroundColor = UIColor(red: 236 / 255, green: 235 / 255, blue: 235 / 255, alpha: 1)
            lineView.translatesAutoresizingMaskIntoConstraints = false
            lineView.widthAnchor.constraint(equalToConstant: 335).isActive = true
            lineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
            lineView.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(startTop)).isActive = true
            lineView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
            startTop += 38
        }
    }

    private func setSizeButton() {
        var startTop = 77
        for size in listSize {
            let sizeButton = UIButton()
            view.addSubview(sizeButton)
            sizeButton.setTitleColor(.black, for: .normal)
            sizeButton.setTitle(size, for: .normal)
            sizeButton.contentHorizontalAlignment = .left
            sizeButton.translatesAutoresizingMaskIntoConstraints = false
            sizeButton.widthAnchor.constraint(equalToConstant: 278).isActive = true
            sizeButton.heightAnchor.constraint(equalToConstant: 19).isActive = true
            sizeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(startTop)).isActive = true
            sizeButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
            startTop += 38
        }
    }

    private func setupCloseButton() {
        view.addSubview(closeButton)
        closeButton.addTarget(self, action: #selector(translitionBack), for: .touchUpInside)
        closeButton.setImage(UIImage(systemName: "xmark"), for: .normal)
        closeButton.tintColor = .black
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        closeButton.widthAnchor.constraint(equalToConstant: 14).isActive = true
        closeButton.heightAnchor.constraint(equalToConstant: 14).isActive = true
        closeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 26).isActive = true
        closeButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    }

    @objc private func translitionBack() {
        dismiss(animated: true)
    }
}
