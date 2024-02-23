//   StoriesViewCell.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Ячейка для показа историй
class StoriesViewCell: UITableViewCell {
    // MARK: - Constants

    enum Constant {
        static let textLabel = "Ваша История"
        static let textlavandaLabel = "lavanda123"
        static let textFont = "Verdana"
    }

    // MARK: - Public Properties

    static let identifierStories = "StoriesViewCell"

    // MARK: - Private Properties

    private let scrollView = UIScrollView()
    private let avatarOneImageView = UIImageView()
    private let avatarTwoImageView = UIImageView()
    private let avatarThreeImageView = UIImageView()
    private let avatarFourImageView = UIImageView()
    private let avatarFiveImageView = UIImageView()
    private let avatarForLabelOne = UILabel()
    private let avatarForLabelTwo = UILabel()
    private let avatarForLabelThree = UILabel()
    private let avatarForLabelFour = UILabel()
    private let avatarForLabelFive = UILabel()

    // MARK: - Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .white
        addContentView()
        setupImageView()
        numberSetupTwoImageView()
        setupScrollView()
        setupLabel()
        setupLabelTwo()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    // MARK: Public Method

    func setup(param: [LinkStorage]) {
        setupLabel()
        setupImageView()
        setupScrollView()
        avatarOneImageView.image = UIImage(named: param[0].stories)
        avatarTwoImageView.image = UIImage(named: param[1].stories)
        avatarThreeImageView.image = UIImage(named: param[2].stories)
        avatarFourImageView.image = UIImage(named: param[3].stories)
        avatarFiveImageView.image = UIImage(named: param[4].stories)
    }

    // MARK: - Private Methods

    private func addContentView() {
        scrollView.addSubview(avatarFiveImageView)
        scrollView.addSubview(avatarFourImageView)
        scrollView.addSubview(avatarThreeImageView)
        scrollView.addSubview(avatarTwoImageView)
        scrollView.addSubview(avatarOneImageView)
        contentView.addSubview(scrollView)
        scrollView.addSubview(avatarForLabelOne)
        scrollView.addSubview(avatarForLabelTwo)
        scrollView.addSubview(avatarForLabelThree)
        scrollView.addSubview(avatarForLabelFour)
        scrollView.addSubview(avatarForLabelFive)
    }

    private func numberSetupTwoImageView() {
        avatarOneImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarOneImageView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 7).isActive = true
        avatarOneImageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 12).isActive = true
        avatarOneImageView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        avatarOneImageView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        avatarTwoImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarTwoImageView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 7).isActive = true
        avatarTwoImageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 94).isActive = true
        avatarTwoImageView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        avatarTwoImageView.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }

    private func setupImageView() {
        avatarThreeImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarThreeImageView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 7).isActive = true
        avatarThreeImageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 176).isActive = true
        avatarThreeImageView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        avatarThreeImageView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        avatarFourImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarFourImageView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 7).isActive = true
        avatarFourImageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 258).isActive = true
        avatarFourImageView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        avatarFourImageView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        avatarFiveImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarFiveImageView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 7).isActive = true
        avatarFiveImageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 340).isActive = true
        avatarFiveImageView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        avatarFiveImageView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        avatarFiveImageView.heightAnchor.constraint(equalToConstant: 60).isActive = true
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

    private func setupLabelTwo() {
        avatarForLabelOne.text = Constant.textLabel
        avatarForLabelOne.font = UIFont(name: Constant.textFont, size: 8)
        avatarForLabelOne.textColor = UIColor(red: 144 / 255, green: 145 / 255, blue: 145 / 255, alpha: 1)
        avatarForLabelOne.textAlignment = .center
        avatarForLabelOne.translatesAutoresizingMaskIntoConstraints = false
        avatarForLabelOne.widthAnchor.constraint(equalToConstant: 74).isActive = true
        avatarForLabelOne.heightAnchor.constraint(equalToConstant: 10).isActive = true
        avatarForLabelOne.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 70).isActive = true
        avatarForLabelOne.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 5).isActive = true

        avatarForLabelTwo.text = Constant.textLabel
        avatarForLabelTwo.font = UIFont(name: Constant.textFont, size: 8)
        avatarForLabelTwo.textColor = .black
        avatarForLabelTwo.textAlignment = .center
        avatarForLabelTwo.translatesAutoresizingMaskIntoConstraints = false
        avatarForLabelTwo.widthAnchor.constraint(equalToConstant: 74).isActive = true
        avatarForLabelTwo.heightAnchor.constraint(equalToConstant: 10).isActive = true
        avatarForLabelTwo.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 70).isActive = true
        avatarForLabelTwo.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 87)
            .isActive = true
    }

    private func setupLabel() {
        avatarForLabelThree.text = Constant.textLabel
        avatarForLabelThree.font = UIFont(name: Constant.textFont, size: 8)
        avatarForLabelThree.textColor = .black
        avatarForLabelThree.textAlignment = .center
        avatarForLabelThree.translatesAutoresizingMaskIntoConstraints = false
        avatarForLabelThree.widthAnchor.constraint(equalToConstant: 74).isActive = true
        avatarForLabelThree.heightAnchor.constraint(equalToConstant: 10).isActive = true
        avatarForLabelThree.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 70).isActive = true
        avatarForLabelThree.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 169).isActive = true
        avatarForLabelFour.text = Constant.textLabel
        avatarForLabelFour.font = UIFont(name: Constant.textFont, size: 8)
        avatarForLabelFour.textColor = .black
        avatarForLabelFour.textAlignment = .center
        avatarForLabelFour.translatesAutoresizingMaskIntoConstraints = false
        avatarForLabelFour.widthAnchor.constraint(equalToConstant: 74).isActive = true
        avatarForLabelFour.heightAnchor.constraint(equalToConstant: 10).isActive = true
        avatarForLabelFour.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 70).isActive = true
        avatarForLabelFour.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 251).isActive = true
        avatarForLabelFive.text = Constant.textLabel
        avatarForLabelFive.font = UIFont(name: Constant.textFont, size: 8)
        avatarForLabelFive.textColor = .black
        avatarForLabelFive.textAlignment = .center
        avatarForLabelFive.translatesAutoresizingMaskIntoConstraints = false
        avatarForLabelFive.widthAnchor.constraint(equalToConstant: 74).isActive = true
        avatarForLabelFive.heightAnchor.constraint(equalToConstant: 10).isActive = true
        avatarForLabelFive.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 70).isActive = true
        avatarForLabelFive.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 333).isActive = true
    }
}
