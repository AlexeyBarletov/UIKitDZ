// NotificationsSubscription.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Ячейка, подписка на уведомления
class NotificationsSubscription: UITableViewCell {
    // MARK: - Constants

    enum Constant {
        static let comment = "lavanda123 понравился ваш комментарий: Это где? 3д."
        static let avatarImage = "womanTwo"
        static let postImage = "womanThree"
        static let verdanaFont = "Verdana"
        static let verdanaBoldFont = "Verdana-Bold"
        static let verdanaBold12 = UIFont(name: "Verdana-Bold", size: 12) ?? .boldSystemFont(ofSize: 12)
    }

    // MARK: - Public Properties

    static let identifierNotificationsWeekCell = "NotificationsWeekCell"

    // MARK: - Private Properties

    private let commentLabel = UILabel()
    private let avtarImageView = UIImageView()
    private let postImageView = UIImageView()
    private let subscribeButton = UIButton()
    private let avatarPostImageView = UIImageView()
    private var isStateButton = false

    // MARK: - Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .white
        addContenView()
        setupComment()
        setupAvatarImageView()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    // MARK: - Private Methods

    private func addContenView() {
        contentView.addSubview(commentLabel)
        contentView.addSubview(avtarImageView)
        contentView.addSubview(subscribeButton)
    }

    private func setupComment() {
        commentLabel.text = Constant.comment
        commentLabel.textColor = .black
        commentLabel.font = UIFont(name: Constant.verdanaFont, size: 12)
        commentLabel.textAlignment = .left
        commentLabel.numberOfLines = 0
        commentLabel.adjustsFontSizeToFitWidth = true
        commentLabel.minimumScaleFactor = 0.5
        commentLabel.translatesAutoresizingMaskIntoConstraints = false
        commentLabel.widthAnchor.constraint(equalToConstant: 154).isActive = true
        commentLabel.heightAnchor.constraint(equalToConstant: 55).isActive = true
        commentLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 59).isActive = true
    }

    private func setupAvatarImageView() {
        avtarImageView.image = UIImage(named: Constant.avatarImage)
        avtarImageView.translatesAutoresizingMaskIntoConstraints = false
        avtarImageView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        avtarImageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        avtarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12).isActive = true
    }

    private func setupButton() {
        subscribeButton.setTitle("Подписаться", for: .normal)
        subscribeButton.layer.cornerRadius = 8
        subscribeButton.backgroundColor = UIColor(red: 0 / 255, green: 122 / 255, blue: 255 / 255, alpha: 1)
        subscribeButton.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        subscribeButton.layer.borderColor = CGColor(red: 144 / 255, green: 145 / 255, blue: 145 / 255, alpha: 1)
        subscribeButton.titleLabel?.font = UIFont(name: Constant.verdanaBoldFont, size: 10)
        subscribeButton.translatesAutoresizingMaskIntoConstraints = false
        subscribeButton.widthAnchor.constraint(equalToConstant: 130).isActive = true
        subscribeButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        subscribeButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 240).isActive = true
        subscribeButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
    }

    private func setupPostImage(imageName: String) {
        contentView.addSubview(avatarPostImageView)
        avatarPostImageView.image = UIImage(named: imageName)
        avatarPostImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarPostImageView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        avatarPostImageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        avatarPostImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 323).isActive = true
    }

    private func setupAtributetString(nick: String, comment: String) -> NSAttributedString {
        let fullText = "\(nick) \(comment)"
        let atributetString = NSMutableAttributedString(string: fullText)
        atributetString.addAttribute(
            .font,
            value: Constant.verdanaBold12,
            range: (fullText as NSString).range(of: nick)
        )
        return atributetString
    }

    // MARK: Public Private

    func setupTranslitionInfo(subscription: Subscription) {
        if subscription.isHidden {
            setupPostImage(imageName: subscription.avatar)
            avtarImageView.image = UIImage(named: subscription.commentImage)
        } else {
            setupButton()
            setupPostImage(imageName: subscription.avatar)
            avtarImageView.image = UIImage(named: subscription.commentImage)
            avatarPostImageView.isHidden = true
        }
        commentLabel.attributedText = setupAtributetString(nick: subscription.nickName, comment: subscription.comment)
    }

    // MARK: - Private Methods

    @objc private func tapButton() {
        if isStateButton {
            subscribeButton.backgroundColor = UIColor(red: 0 / 255, green: 122 / 255, blue: 255 / 255, alpha: 1)
            subscribeButton.layer.borderWidth = 0
            subscribeButton.setTitleColor(.white, for: .normal)

        } else {
            subscribeButton.setTitleColor(.gray, for: .normal)
            subscribeButton.backgroundColor = .clear
            subscribeButton.layer.borderWidth = 1
        }
        isStateButton.toggle()
    }
}
