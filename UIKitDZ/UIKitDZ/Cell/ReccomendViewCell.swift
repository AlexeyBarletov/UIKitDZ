// ReccomendViewCell.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Ячейка для отображения рекоммендаций
final class ReccomendViewCell: UITableViewCell {
    // MARK: - Constants

    enum Constant {
        static let fontVerdanaBold = "Verdana-Bold"
        static let fontVerdana = "Verdana"
        static let lockImage = "lock"
        static let womanMaryImage = "womanMary"
        static let subtitleLabel = "сrimea_082"
        static let subtitleTwoLabel = "mary_pol"
        static let crossButtonImage = "cross"
        static let subscribeText = "Подписаться"
        static let reccomendText = "Рекомендуем вам"
        static let allLabelText = "Все"
        static let crossImage = "cross"
    }

    // MARK: - Public Properties

    static let indentifireReccomend = "ReccomendViewCell "

    // MARK: Private Property

    private let scrollView = UIScrollView()
    private let reccomendLabel = UILabel()
    private let allLabel = UILabel()
    private let whiteView = UIView()
    private let whiteViewTwo = UIView()
    private let lockImageView = UIImageView()
    private let womanMaryImageView = UIImageView()
    private let crossButon = UIButton()
    private let crossButtonTwo = UIButton()
    private let subtitleLabel = UILabel()
    private let subscribeButton = UIButton()
    private let subscribeButtonTwo = UIButton()
    private let subtitleTwoLabel = UILabel()

    // MARK: - Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupAddView()
        setupButton()
        setupNumberTwoButton()
        setupView()
        setupScrollView()
        setupLabel()
        setupNumberTwoLabel()
        setupInfoWhite()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    // MARK: - Private Methods

    private func setupAddView() {
        contentView.backgroundColor = UIColor(red: 210 / 255, green: 223 / 255, blue: 238 / 255, alpha: 1)
        contentView.addSubview(reccomendLabel)
        contentView.addSubview(allLabel)
        scrollView.addSubview(whiteView)
        scrollView.addSubview(whiteViewTwo)
        whiteView.addSubview(crossButon)
        whiteView.addSubview(subscribeButton)
        whiteView.addSubview(lockImageView)
        whiteView.addSubview(subtitleLabel)
        whiteViewTwo.addSubview(subtitleTwoLabel)
        whiteViewTwo.addSubview(womanMaryImageView)
        whiteViewTwo.addSubview(subscribeButtonTwo)
        whiteViewTwo.addSubview(crossButtonTwo)
    }

    private func setupScrollView() {
        contentView.addSubview(scrollView)
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 45).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }

    private func setupNumberTwoLabel() {
        reccomendLabel.text = Constant.reccomendText
        reccomendLabel.textColor = .black
        reccomendLabel.font = UIFont(name: Constant.fontVerdanaBold, size: 10)
        reccomendLabel.textAlignment = .left
        reccomendLabel.translatesAutoresizingMaskIntoConstraints = false
        reccomendLabel.widthAnchor.constraint(equalToConstant: 107).isActive = true
        reccomendLabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        reccomendLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12).isActive = true
        reccomendLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 9).isActive = true
        allLabel.text = Constant.allLabelText
        allLabel.textColor = UIColor(displayP3Red: 0 / 255, green: 122 / 255, blue: 255 / 255, alpha: 1)
        allLabel.font = UIFont(name: Constant.fontVerdanaBold, size: 10)
        allLabel.textAlignment = .right
        allLabel.translatesAutoresizingMaskIntoConstraints = false
        allLabel.widthAnchor.constraint(equalToConstant: 107).isActive = true
        allLabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        allLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 258).isActive = true
        allLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 9).isActive = true
    }

    private func setupLabel() {
        subtitleLabel.text = Constant.subtitleLabel
        subtitleLabel.textColor = .black
        subtitleLabel.font = UIFont(name: Constant.fontVerdana, size: 10)
        subtitleLabel.textAlignment = .center
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        subtitleLabel.heightAnchor.constraint(equalToConstant: 12).isActive = true
        subtitleLabel.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 42).isActive = true
        subtitleLabel.topAnchor.constraint(equalTo: whiteView.topAnchor, constant: 135).isActive = true
        subtitleTwoLabel.text = Constant.subtitleTwoLabel
        subtitleTwoLabel.textColor = .black
        subtitleTwoLabel.font = UIFont(name: Constant.fontVerdana, size: 10)
        subtitleTwoLabel.textAlignment = .center
        subtitleTwoLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleTwoLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        subtitleTwoLabel.heightAnchor.constraint(equalToConstant: 12).isActive = true
        subtitleTwoLabel.leadingAnchor.constraint(equalTo: whiteViewTwo.leadingAnchor, constant: 42).isActive = true
        subtitleTwoLabel.topAnchor.constraint(equalTo: whiteViewTwo.topAnchor, constant: 135).isActive = true
    }

    private func setupView() {
        whiteView.backgroundColor = .white
        whiteView.translatesAutoresizingMaskIntoConstraints = false
        whiteView.widthAnchor.constraint(equalToConstant: 185).isActive = true
        whiteView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        whiteView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 17).isActive = true
        whiteView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        whiteViewTwo.backgroundColor = .white
        whiteViewTwo.translatesAutoresizingMaskIntoConstraints = false
        whiteViewTwo.widthAnchor.constraint(equalToConstant: 185).isActive = true
        whiteViewTwo.heightAnchor.constraint(equalToConstant: 200).isActive = true
        whiteViewTwo.leadingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: 20).isActive = true
        whiteViewTwo.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        whiteViewTwo.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
    }

    private func setupNumberTwoButton() {
        crossButon.setImage(UIImage(named: Constant.crossImage), for: .normal)
        crossButon.translatesAutoresizingMaskIntoConstraints = false
        crossButon.widthAnchor.constraint(equalToConstant: 7).isActive = true
        crossButon.heightAnchor.constraint(equalToConstant: 7).isActive = true
        crossButon.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 169).isActive = true
        crossButon.topAnchor.constraint(equalTo: whiteView.topAnchor, constant: 8).isActive = true
        crossButtonTwo.setImage(UIImage(named: Constant.crossButtonImage), for: .normal)
        crossButtonTwo.translatesAutoresizingMaskIntoConstraints = false
        crossButtonTwo.widthAnchor.constraint(equalToConstant: 7).isActive = true
        crossButtonTwo.heightAnchor.constraint(equalToConstant: 7).isActive = true
        crossButtonTwo.leadingAnchor.constraint(equalTo: whiteViewTwo.leadingAnchor, constant: 169).isActive = true
        crossButtonTwo.topAnchor.constraint(equalTo: whiteViewTwo.topAnchor, constant: 8).isActive = true
    }

    private func setupButton() {
        subscribeButton.layer.cornerRadius = 8
        subscribeButton.setTitle(Constant.subscribeText, for: .normal)
        subscribeButton.backgroundColor = UIColor(red: 0 / 255, green: 122 / 255, blue: 255 / 255, alpha: 1)
        subscribeButton.titleLabel?.font = UIFont(name: Constant.fontVerdanaBold, size: 10)
        subscribeButton.translatesAutoresizingMaskIntoConstraints = false
        subscribeButton.widthAnchor.constraint(equalToConstant: 165).isActive = true
        subscribeButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        subscribeButton.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 10).isActive = true
        subscribeButton.topAnchor.constraint(equalTo: whiteView.topAnchor, constant: 156).isActive = true
        subscribeButtonTwo.layer.cornerRadius = 8
        subscribeButtonTwo.setTitle(Constant.subscribeText, for: .normal)
        subscribeButtonTwo.backgroundColor = UIColor(red: 0 / 255, green: 122 / 255, blue: 255 / 255, alpha: 1)
        subscribeButtonTwo.titleLabel?.font = UIFont(name: Constant.fontVerdanaBold, size: 10)
        subscribeButtonTwo.translatesAutoresizingMaskIntoConstraints = false
        subscribeButtonTwo.widthAnchor.constraint(equalToConstant: 165).isActive = true
        subscribeButtonTwo.heightAnchor.constraint(equalToConstant: 30).isActive = true
        subscribeButtonTwo.leadingAnchor.constraint(equalTo: whiteViewTwo.leadingAnchor, constant: 10).isActive = true
        subscribeButtonTwo.topAnchor.constraint(equalTo: whiteViewTwo.topAnchor, constant: 156).isActive = true
    }

    private func setupInfoWhite() {
        lockImageView.image = UIImage(named: Constant.lockImage)
        lockImageView.layer.cornerRadius = 100
        lockImageView.translatesAutoresizingMaskIntoConstraints = false
        lockImageView.widthAnchor.constraint(equalToConstant: 115).isActive = true
        lockImageView.heightAnchor.constraint(equalToConstant: 115).isActive = true
        lockImageView.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 35).isActive = true
        lockImageView.topAnchor.constraint(equalTo: whiteView.topAnchor, constant: 15).isActive = true

        womanMaryImageView.image = UIImage(named: Constant.womanMaryImage)
        womanMaryImageView.layer.cornerRadius = 100
        womanMaryImageView.translatesAutoresizingMaskIntoConstraints = false
        womanMaryImageView.widthAnchor.constraint(equalToConstant: 115).isActive = true
        womanMaryImageView.heightAnchor.constraint(equalToConstant: 115).isActive = true
        womanMaryImageView.leadingAnchor.constraint(equalTo: whiteViewTwo.leadingAnchor, constant: 35).isActive = true
        womanMaryImageView.topAnchor.constraint(equalTo: whiteViewTwo.topAnchor, constant: 15).isActive = true
    }
}
