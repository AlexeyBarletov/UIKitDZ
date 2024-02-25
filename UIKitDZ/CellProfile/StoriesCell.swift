// StoriesCell.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Ячейка для показа историй
final class StoriesCell: UITableViewCell {
    // MARK: Constant

    enum Constant {
        static let rocket = "rocket"
        static let spacey = "spacey"
        static let space = "space"
        static let moon = "moon"
        static let launchText = "Запуск"
        static let rocketText = "Ракета"
        static let spaceyText = "Космонавант"
        static let spaceText = "Космос"
        static let moonText = "Луна"
        static let verdana = "Verdana"
        static let randomText = "Марс"
    }

    // MARK: - Public Properties

    static let storiesCell = "StoriesCell"

    // MARK: Private Properties

    let scrollView = UIScrollView()
    let launchImageView = UIImageView()
    let rocketImageView = UIImageView()
    let spaceyImageView = UIImageView()
    let spaceImageView = UIImageView()
    let moonImageView = UIImageView()
    let marsImageView = UIImageView()
    let launchLabel = UILabel()
    let rocketLabel = UILabel()
    let spaceyLabel = UILabel()
    let spaceLabel = UILabel()
    let moonLabel = UILabel()
    let randomLabel = UILabel()

    // MARK: - Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .white
        addContenView()
        setupScrollView()
        setuImageView()
        setupLabelTwo()
        setupLabel()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    private func addContenView() {
        contentView.addSubview(scrollView)
        scrollView.addSubview(launchImageView)
        scrollView.addSubview(moonImageView)
        scrollView.addSubview(spaceImageView)
        scrollView.addSubview(spaceyImageView)
        scrollView.addSubview(rocketImageView)
        scrollView.addSubview(marsImageView)
        scrollView.addSubview(launchLabel)
        scrollView.addSubview(rocketLabel)
        scrollView.addSubview(spaceyLabel)
        scrollView.addSubview(spaceLabel)
        scrollView.addSubview(moonLabel)
        scrollView.addSubview(randomLabel)
    }

    private func setupScrollView() {
        scrollView.backgroundColor = .white
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }

    // MARK: Private Method

    private func setuImageView() {
        launchImageView.image = UIImage(named: Constant.rocket)
        launchImageView.translatesAutoresizingMaskIntoConstraints = false
        launchImageView.widthAnchor.constraint(equalToConstant: 49).isActive = true
        launchImageView.heightAnchor.constraint(equalToConstant: 49).isActive = true
        launchImageView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 7).isActive = true
        launchImageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 18).isActive = true
        moonImageView.image = UIImage(named: Constant.moon)
        moonImageView.translatesAutoresizingMaskIntoConstraints = false
        moonImageView.widthAnchor.constraint(equalToConstant: 49).isActive = true
        moonImageView.heightAnchor.constraint(equalToConstant: 49).isActive = true
        moonImageView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 7).isActive = true
        moonImageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 89).isActive = true
        spaceImageView.image = UIImage(named: Constant.spacey)
        spaceImageView.translatesAutoresizingMaskIntoConstraints = false
        spaceImageView.widthAnchor.constraint(equalToConstant: 49).isActive = true
        spaceImageView.heightAnchor.constraint(equalToConstant: 49).isActive = true
        spaceImageView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 7).isActive = true
        spaceImageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 160).isActive = true
        spaceyImageView.image = UIImage(named: Constant.space)
        spaceyImageView.translatesAutoresizingMaskIntoConstraints = false
        spaceyImageView.widthAnchor.constraint(equalToConstant: 49).isActive = true
        spaceyImageView.heightAnchor.constraint(equalToConstant: 49).isActive = true
        spaceyImageView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 7).isActive = true
        spaceyImageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 231).isActive = true
        rocketImageView.image = UIImage(named: Constant.rocket)
        rocketImageView.translatesAutoresizingMaskIntoConstraints = false
        rocketImageView.widthAnchor.constraint(equalToConstant: 49).isActive = true
        rocketImageView.heightAnchor.constraint(equalToConstant: 49).isActive = true
        rocketImageView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 7).isActive = true
        rocketImageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 302).isActive = true
        marsImageView.image = UIImage(named: Constant.moon)
        marsImageView.translatesAutoresizingMaskIntoConstraints = false
        marsImageView.widthAnchor.constraint(equalToConstant: 49).isActive = true
        marsImageView.heightAnchor.constraint(equalToConstant: 49).isActive = true
        marsImageView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 7).isActive = true
        marsImageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 371).isActive = true
        marsImageView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
    }

    private func setupLabelTwo() {
        launchLabel.text = Constant.launchText
        launchLabel.font = UIFont(name: Constant.verdana, size: 10)
        launchLabel.textColor = .black
        launchLabel.textAlignment = .center
        launchLabel.translatesAutoresizingMaskIntoConstraints = false
        launchLabel.widthAnchor.constraint(equalToConstant: 55).isActive = true
        launchLabel.heightAnchor.constraint(equalToConstant: 12).isActive = true
        launchLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 15).isActive = true
        launchLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 60).isActive = true
        rocketLabel.text = Constant.rocketText
        rocketLabel.font = UIFont(name: Constant.verdana, size: 10)
        rocketLabel.textColor = .black
        rocketLabel.textAlignment = .center
        rocketLabel.translatesAutoresizingMaskIntoConstraints = false
        rocketLabel.widthAnchor.constraint(equalToConstant: 55).isActive = true
        rocketLabel.heightAnchor.constraint(equalToConstant: 12).isActive = true
        rocketLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 86).isActive = true
        rocketLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 60).isActive = true
        spaceyLabel.text = Constant.spaceyText
        spaceyLabel.font = UIFont(name: Constant.verdana, size: 10)
        spaceyLabel.textColor = .black
        spaceyLabel.textAlignment = .center
        spaceyLabel.numberOfLines = 1
        spaceyLabel.translatesAutoresizingMaskIntoConstraints = false
        spaceyLabel.widthAnchor.constraint(equalToConstant: 55).isActive = true
        spaceyLabel.heightAnchor.constraint(equalToConstant: 12).isActive = true
        spaceyLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 157).isActive = true
        spaceyLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 60).isActive = true
        spaceLabel.text = Constant.spaceText
        spaceLabel.font = UIFont(name: Constant.verdana, size: 10)
        spaceLabel.textColor = .black
        spaceLabel.textAlignment = .center
        spaceLabel.numberOfLines = 1
        spaceLabel.translatesAutoresizingMaskIntoConstraints = false
        spaceLabel.widthAnchor.constraint(equalToConstant: 55).isActive = true
        spaceLabel.heightAnchor.constraint(equalToConstant: 12).isActive = true
        spaceLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 228).isActive = true
        spaceLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 60).isActive = true
    }

    private func setupLabel() {
        moonLabel.text = Constant.launchText
        moonLabel.font = UIFont(name: Constant.verdana, size: 10)
        moonLabel.textColor = .black
        moonLabel.textAlignment = .center
        moonLabel.numberOfLines = 1
        moonLabel.translatesAutoresizingMaskIntoConstraints = false
        moonLabel.widthAnchor.constraint(equalToConstant: 55).isActive = true
        moonLabel.heightAnchor.constraint(equalToConstant: 12).isActive = true
        moonLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 299).isActive = true
        moonLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 60).isActive = true
        randomLabel.text = Constant.randomText
        randomLabel.font = UIFont(name: Constant.verdana, size: 10)
        randomLabel.textColor = .black
        randomLabel.textAlignment = .center
        randomLabel.numberOfLines = 1
        randomLabel.translatesAutoresizingMaskIntoConstraints = false
        randomLabel.widthAnchor.constraint(equalToConstant: 55).isActive = true
        randomLabel.heightAnchor.constraint(equalToConstant: 12).isActive = true
        randomLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 370).isActive = true
        randomLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 60).isActive = true
    }
}
