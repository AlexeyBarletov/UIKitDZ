// NotificationsCommentCell.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Ячейка, уведомления о посте
class NotificationsCommentCell: UITableViewCell {
    // MARK: - Constants

    enum Constant {
        static let comment = "lavanda123 понравился ваш комментарий: Очень красиво! 12ч"
        static let verdanaFont = "Verdana"
        static let avatarImage = "womanTwo"
        static let postImage = "sea"
        static let verdanaBoldFont = UIFont(name: "Verdana-Bold", size: 12) ?? .boldSystemFont(ofSize: 12)
    }

    // MARK: - Public Properties

    static let identifierNotificationsDayCell = "NotificationsCell"

    // MARK: - Private Properties

    private var commentLabel = UILabel()
    private var avatarImageView = UIImageView()
    private var avatarPostImageView = UIImageView()

    // MARK: - Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .white
        addView()
        setupCommentLabel()
        setupImageView()
        setupImageView()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    // MARK: - Private Methods

    private func addView() {
        contentView.addSubview(avatarImageView)
        contentView.addSubview(avatarPostImageView)
        contentView.addSubview(commentLabel)
    }

    private func setupImageView() {
        avatarImageView.image = UIImage(named: Constant.avatarImage)
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarImageView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        avatarImageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12).isActive = true
        avatarPostImageView.image = UIImage(named: Constant.postImage)
        avatarPostImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarPostImageView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        avatarPostImageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        avatarPostImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 323).isActive = true
    }

    private func setupCommentLabel() {
        commentLabel.text = Constant.comment
        commentLabel.font = UIFont(name: Constant.verdanaFont, size: 12)
        commentLabel.textColor = .black
        commentLabel.textAlignment = .left
        commentLabel.numberOfLines = 2
        commentLabel.translatesAutoresizingMaskIntoConstraints = false
        commentLabel.widthAnchor.constraint(equalToConstant: 240).isActive = true
        commentLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        commentLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 59).isActive = true
    }

    private func setupAtributetString(nick: String, comment: String) -> NSAttributedString {
        let fullText = "\(nick) \(comment)"
        let atributetString = NSMutableAttributedString(string: fullText)
        atributetString.addAttribute(
            .font,
            value: Constant.verdanaBoldFont,
            range: (fullText as NSString).range(of: nick)
        )
        return atributetString
    }

    // MARK: - Public Methods

    func setup(param: Comment) {
        commentLabel.attributedText = setupAtributetString(nick: param.nickName, comment: param.comment)
        avatarImageView.image = UIImage(named: param.avatar)
        avatarPostImageView.image = UIImage(named: param.post)
    }
}
