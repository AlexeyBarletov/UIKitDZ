// UserInfoCell.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Ячейка для показа информации о пользователе
class UserInfoCell: UITableViewCell {
    // MARK: Constant

    enum Constant {
        static var pin = "pin"
        static var titleChange = "Изменить"
        static var verdanaBold = "Verdana-Bold"
        static var verdana = "Verdana"
        static var titleShare = "Поделиться"
        static var add = "add"
        static var publicationsLabel = "67"
        static var subscribersLabel = "458"
        static var subscriptionsLabel = "120"
        static var publicationsTextLabel = "публикации"
        static var subscribersTextLabel = "подписчики"
        static var subscriptionsTextLabel = "подписки"
        static var consultant = "Консультант"
    }

    // MARK: - Public Properties

    static let userInfoCell = "UserInfoCell"

    // MARK: Private Properties

    private var avatarImageView = UIImageView()
    private var pinImageView = UIImageView()
    private var changeButton = UIButton()
    private var shareButton = UIButton()
    private var add = UIButton()
    private var publications = UILabel()
    private var publicationsNumberLabel = UILabel()
    private var subscribersNumberLabel = UILabel()
    private var subscriptionsNumberLabel = UILabel()
    private var publicationsTextLabel = UILabel()
    private var subscribersTextLabel = UILabel()
    private var subscriptionsTextLabel = UILabel()
    private var nameUser = UILabel()
    private let consultantLabel = UILabel()
    private let linkLabel = UILabel()

    // MARK: - Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .white
        addContentView()
        setupImageView()
        setupButton()
        setupLabelColl()
        setupTitleLabel()
        setupLabelConsultan()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    // MARK: Private Methode

    private func addContentView() {
        contentView.addSubview(avatarImageView)
        contentView.addSubview(pinImageView)
        contentView.addSubview(changeButton)
        contentView.addSubview(shareButton)
        contentView.addSubview(add)
        contentView.addSubview(publicationsNumberLabel)
        contentView.addSubview(subscribersNumberLabel)
        contentView.addSubview(subscriptionsNumberLabel)
        contentView.addSubview(publicationsTextLabel)
        contentView.addSubview(subscribersTextLabel)
        contentView.addSubview(subscriptionsTextLabel)
        contentView.addSubview(nameUser)
        contentView.addSubview(consultantLabel)
        contentView.addSubview(linkLabel)
    }

    private func setupImageView() {
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarImageView.widthAnchor.constraint(equalToConstant: 80).isActive = true
        avatarImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15).isActive = true
        avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12).isActive = true

        pinImageView.translatesAutoresizingMaskIntoConstraints = false
        pinImageView.widthAnchor.constraint(equalToConstant: 17).isActive = true
        pinImageView.heightAnchor.constraint(equalToConstant: 17).isActive = true
        pinImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15).isActive = true
        pinImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 152).isActive = true
    }

    private func setupButton() {
        changeButton.setTitle(Constant.titleChange, for: .normal)
        changeButton.titleLabel?.font = UIFont(name: Constant.verdanaBold, size: 10)
        changeButton.titleLabel?.textAlignment = .center
        changeButton.backgroundColor = UIColor(red: 239 / 255, green: 239 / 255, blue: 239 / 255, alpha: 1)
        changeButton.layer.cornerRadius = 8
        changeButton.setTitleColor(UIColor.black, for: .normal)
        changeButton.translatesAutoresizingMaskIntoConstraints = false
        changeButton.widthAnchor.constraint(equalToConstant: 155).isActive = true
        changeButton.heightAnchor.constraint(equalToConstant: 28).isActive = true
        changeButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15).isActive = true
        changeButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 184).isActive = true

        shareButton.setTitle(Constant.titleShare, for: .normal)
        shareButton.titleLabel?.font = UIFont(name: Constant.verdanaBold, size: 10)
        shareButton.titleLabel?.textAlignment = .center
        shareButton.backgroundColor = UIColor(red: 239 / 255, green: 239 / 255, blue: 239 / 255, alpha: 1)
        shareButton.layer.cornerRadius = 8
        shareButton.setTitleColor(UIColor.black, for: .normal)
        shareButton.translatesAutoresizingMaskIntoConstraints = false
        shareButton.widthAnchor.constraint(equalToConstant: 155).isActive = true
        shareButton.heightAnchor.constraint(equalToConstant: 28).isActive = true
        shareButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 175).isActive = true
        shareButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 184).isActive = true

        add.setImage(UIImage(named: Constant.add), for: .normal)
        add.backgroundColor = UIColor(red: 239 / 255, green: 239 / 255, blue: 239 / 255, alpha: 1)
        add.layer.cornerRadius = 8
        add.setTitleColor(UIColor.black, for: .normal)
        add.translatesAutoresizingMaskIntoConstraints = false
        add.widthAnchor.constraint(equalToConstant: 25).isActive = true
        add.heightAnchor.constraint(equalToConstant: 28).isActive = true
        add.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 335).isActive = true
        add.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 184).isActive = true
    }

    private func setupLabelColl() {
        publicationsNumberLabel.text = Constant.publicationsLabel
        publicationsNumberLabel.textColor = .black
        publicationsNumberLabel.textAlignment = .center
        publicationsNumberLabel.font = UIFont(name: Constant.verdanaBold, size: 14)

        publicationsNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        publicationsNumberLabel.widthAnchor.constraint(equalToConstant: 50).isActive = true
        publicationsNumberLabel.heightAnchor.constraint(equalToConstant: 17).isActive = true
        publicationsNumberLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 151)
            .isActive = true
        publicationsNumberLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 22).isActive = true

        subscribersNumberLabel.text = Constant.subscribersLabel
        subscribersNumberLabel.textColor = .black
        subscribersNumberLabel.textAlignment = .center
        subscribersNumberLabel.font = UIFont(name: Constant.verdanaBold, size: 14)

        subscribersNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        subscribersNumberLabel.widthAnchor.constraint(equalToConstant: 50).isActive = true
        subscribersNumberLabel.heightAnchor.constraint(equalToConstant: 17).isActive = true
        subscribersNumberLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 221)
            .isActive = true
        subscribersNumberLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 22).isActive = true

        subscriptionsNumberLabel.text = Constant.subscriptionsLabel
        subscriptionsNumberLabel.textColor = .black
        subscriptionsNumberLabel.textAlignment = .center
        subscriptionsNumberLabel.font = UIFont(name: Constant.verdanaBold, size: 14)

        subscriptionsNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        subscriptionsNumberLabel.widthAnchor.constraint(equalToConstant: 50).isActive = true
        subscriptionsNumberLabel.heightAnchor.constraint(equalToConstant: 17).isActive = true
        subscriptionsNumberLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 292)
            .isActive = true
        subscriptionsNumberLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 22).isActive = true
    }

    private func setupTitleLabel() {
        publicationsTextLabel.text = Constant.subscriptionsTextLabel
        publicationsTextLabel.textColor = .black
        publicationsTextLabel.textAlignment = .center
        publicationsTextLabel.font = UIFont(name: Constant.verdana, size: 10)

        publicationsTextLabel.translatesAutoresizingMaskIntoConstraints = false
        publicationsTextLabel.widthAnchor.constraint(equalToConstant: 70).isActive = true
        publicationsTextLabel.heightAnchor.constraint(equalToConstant: 12).isActive = true
        publicationsTextLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 141)
            .isActive = true
        publicationsTextLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 41).isActive = true

        subscribersTextLabel.text = Constant.subscriptionsTextLabel
        subscribersTextLabel.textColor = .black
        subscribersTextLabel.textAlignment = .center
        subscribersTextLabel.font = UIFont(name: Constant.verdana, size: 10)

        subscribersTextLabel.translatesAutoresizingMaskIntoConstraints = false
        subscribersTextLabel.widthAnchor.constraint(equalToConstant: 70).isActive = true
        subscribersTextLabel.heightAnchor.constraint(equalToConstant: 12).isActive = true
        subscribersTextLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 211)
            .isActive = true
        subscribersTextLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 41).isActive = true

        subscriptionsTextLabel.text = Constant.subscriptionsTextLabel
        subscriptionsTextLabel.textColor = .black
        subscriptionsTextLabel.textAlignment = .center
        subscriptionsTextLabel.font = UIFont(name: Constant.verdana, size: 10)
        subscriptionsTextLabel.translatesAutoresizingMaskIntoConstraints = false
        subscriptionsTextLabel.widthAnchor.constraint(equalToConstant: 70).isActive = true
        subscriptionsTextLabel.heightAnchor.constraint(equalToConstant: 12).isActive = true
        subscriptionsTextLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 282)
            .isActive = true
        subscriptionsTextLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 41).isActive = true

        nameUser.textColor = .black
        nameUser.textAlignment = .center
        nameUser.font = UIFont(name: Constant.verdanaBold, size: 14)
        nameUser.textAlignment = .left
        nameUser.translatesAutoresizingMaskIntoConstraints = false
        nameUser.widthAnchor.constraint(equalToConstant: 170).isActive = true
        nameUser.heightAnchor.constraint(equalToConstant: 17).isActive = true
        nameUser.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15)
            .isActive = true
        nameUser.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 101).isActive = true
    }

    private func setupLabelConsultan() {
        consultantLabel.text = Constant.consultant
        consultantLabel.textColor = .black
        consultantLabel.textAlignment = .left
        consultantLabel.font = UIFont(name: Constant.verdana, size: 14)

        consultantLabel.translatesAutoresizingMaskIntoConstraints = false
        consultantLabel.widthAnchor.constraint(equalToConstant: 298).isActive = true
        consultantLabel.heightAnchor.constraint(equalToConstant: 17).isActive = true
        consultantLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15)
            .isActive = true
        consultantLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 129).isActive = true

        linkLabel.textColor = UIColor(red: 4 / 255, green: 104 / 255, blue: 181 / 255, alpha: 1)
        linkLabel.textAlignment = .left
        linkLabel.font = UIFont(name: Constant.verdana, size: 14)
        linkLabel.translatesAutoresizingMaskIntoConstraints = false
        linkLabel.widthAnchor.constraint(equalToConstant: 298).isActive = true
        linkLabel.heightAnchor.constraint(equalToConstant: 17).isActive = true
        linkLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 34)
            .isActive = true
        linkLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 152).isActive = true
    }

    func setupInfo(param: [InfoUser]) {
        avatarImageView.image = UIImage(named: param[0].avatar)
        nameUser.text = param[0].nickName
        pinImageView.image = UIImage(named: param[0].pinImage)
        linkLabel.text = param[0].link
    }
}
