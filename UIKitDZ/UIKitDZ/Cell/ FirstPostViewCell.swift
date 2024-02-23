//   FirstPostViewCell.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Ячейка для показа поста
class FirstPostViewCell: UITableViewCell {
    // MARK: - Constants

    enum Constant {
        static let verdanaFont = "Verdana-Bold"
        static let miniImageAvatar = "miniAvatar"
        static let favoritesButton = "favorites"
        static let airplaneButton = "airplane"
        static let messageButton = "message"
        static let likeButton = "like"
        static let likeLabel = "Нравится: 201"
        static let turDagestanLabel =
            "tur_v_dagestan Насладитесь красотой природы. Забронировать тур в Дагестан можно уже сейчас!"
        static let commentLabel = "Комментировать ..."
        static let minutesLabel = "10 минут назад"
    }

    // MARK: - Public Properties

    static let indentifireFirstPost = "FirstPostViewCell"

    // MARK: Private Property

    private let avatarTurDagestanImageView = UIImageView()
    private let textTurdagestanLabel = UILabel()
    private let extraImage = UIImageView()
    private let scrollView = UIScrollView()
    private let pageControl = UIPageControl()
    private let natureImageView = UIImageView()
    private let suatCanyonImageView = UIImageView()
    private let suatCanyonImageViewTwo = UIImageView()
    private let likeButton = UIButton()
    private let messageButton = UIButton()
    private let airplaneButton = UIButton()
    private let favoritesButton = UIButton()
    private let miniAvatraImageView = UIImageView()
    private let likeLabel = UILabel()
    private let turDagestanLabel = UILabel()
    private let commentLabel = UILabel()
    private let minutesLabel = UILabel()

    // MARK: - Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .white
        addContentView()
        setupDagestanImageView()
        setupScrollView()
        setupPageControl()
        setupImageViewPage()
        setupButton()
        setupLabel()
        setupNumberTwoLabel()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    // MARK: Public Method

    func setup(param: [FirstPost], isPageControllHiden: Bool) {
        pageControl.isHidden = isPageControllHiden
        avatarTurDagestanImageView.image = UIImage(named: param[0].avatar)
        natureImageView.image = UIImage(named: param[0].natureImage)
        suatCanyonImageView.image = UIImage(named: param[0].suatCanyonImage)
        suatCanyonImageViewTwo.image = UIImage(named: param[0].suatCanyonImage)
        textTurdagestanLabel.text = param[0].label
        extraImage.image = UIImage(named: param[0].extraButton)
    }

    // MARK: - Private Methods

    private func addContentView() {
        contentView.addSubview(miniAvatraImageView)
        contentView.addSubview(textTurdagestanLabel)
        contentView.addSubview(commentLabel)
        contentView.addSubview(turDagestanLabel)
        contentView.addSubview(likeLabel)
        contentView.addSubview(minutesLabel)
        contentView.addSubview(likeButton)
        contentView.addSubview(messageButton)
        contentView.addSubview(airplaneButton)
        contentView.addSubview(favoritesButton)
        scrollView.addSubview(suatCanyonImageViewTwo)
        scrollView.addSubview(suatCanyonImageView)
        scrollView.addSubview(natureImageView)
        contentView.addSubview(pageControl)
        contentView.addSubview(scrollView)
        contentView.addSubview(avatarTurDagestanImageView)
        contentView.addSubview(extraImage)
    }

    private func setupLabel() {
        likeLabel.text = Constant.likeLabel
        likeLabel.font = UIFont(name: Constant.verdanaFont, size: 10)
        likeLabel.textAlignment = .left
        likeLabel.textColor = UIColor(red: 46 / 255, green: 45 / 255, blue: 45 / 255, alpha: 1)
        likeLabel.translatesAutoresizingMaskIntoConstraints = false
        likeLabel.widthAnchor.constraint(equalToConstant: 107).isActive = true
        likeLabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        likeLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12).isActive = true
        likeLabel.topAnchor.constraint(equalTo: likeButton.bottomAnchor, constant: 10).isActive = true
        turDagestanLabel
            .text = Constant.turDagestanLabel
        turDagestanLabel.textColor = UIColor(red: 46 / 255, green: 45 / 255, blue: 45 / 255, alpha: 1)
        turDagestanLabel.textAlignment = .left
        turDagestanLabel.numberOfLines = 2
        turDagestanLabel.font = UIFont(name: Constant.verdanaFont, size: 10)
        turDagestanLabel.translatesAutoresizingMaskIntoConstraints = false
        turDagestanLabel.widthAnchor.constraint(equalToConstant: 361).isActive = true
        turDagestanLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        turDagestanLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12).isActive = true
        turDagestanLabel.topAnchor.constraint(equalTo: likeLabel.bottomAnchor, constant: 6).isActive = true
        textTurdagestanLabel.font = UIFont(name: Constant.verdanaFont, size: 12)
        textTurdagestanLabel.textColor = UIColor(red: 46 / 255, green: 45 / 255, blue: 45 / 255, alpha: 1)
        textTurdagestanLabel.translatesAutoresizingMaskIntoConstraints = false
        textTurdagestanLabel.widthAnchor.constraint(equalToConstant: 107).isActive = true
        textTurdagestanLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        textTurdagestanLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
        textTurdagestanLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 48)
            .isActive = true
    }

    private func setupNumberTwoLabel() {
        commentLabel.text = Constant.commentLabel
        commentLabel.font = UIFont(name: Constant.verdanaFont, size: 10)
        commentLabel.textAlignment = .left
        commentLabel.textColor = UIColor(red: 144 / 255, green: 145 / 255, blue: 145 / 255, alpha: 1)
        commentLabel.translatesAutoresizingMaskIntoConstraints = false
        commentLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        commentLabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        commentLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 35).isActive = true
        commentLabel.topAnchor.constraint(equalTo: turDagestanLabel.bottomAnchor, constant: 6).isActive = true
        minutesLabel.text = Constant.minutesLabel
        minutesLabel.font = UIFont(name: Constant.verdanaFont, size: 10)
        minutesLabel.textAlignment = .left
        minutesLabel.textColor = UIColor(red: 144 / 255, green: 145 / 255, blue: 145 / 255, alpha: 1)
        minutesLabel.translatesAutoresizingMaskIntoConstraints = false
        minutesLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        minutesLabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        minutesLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12).isActive = true
        minutesLabel.topAnchor.constraint(equalTo: miniAvatraImageView.bottomAnchor, constant: 8).isActive = true
    }

    private func setupButton() {
        favoritesButton.setImage(UIImage(named: Constant.favoritesButton), for: .normal)
        favoritesButton.translatesAutoresizingMaskIntoConstraints = false
        favoritesButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        favoritesButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        favoritesButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 342).isActive = true
        favoritesButton.topAnchor.constraint(equalTo: pageControl.topAnchor, constant: 8).isActive = true
        airplaneButton.setImage(UIImage(named: Constant.airplaneButton), for: .normal)
        airplaneButton.translatesAutoresizingMaskIntoConstraints = false
        airplaneButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        airplaneButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        airplaneButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 77).isActive = true
        airplaneButton.topAnchor.constraint(equalTo: pageControl.topAnchor, constant: 8).isActive = true
        messageButton.setImage(UIImage(named: Constant.messageButton), for: .normal)
        messageButton.translatesAutoresizingMaskIntoConstraints = false
        messageButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        messageButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        messageButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 42).isActive = true
        messageButton.topAnchor.constraint(equalTo: pageControl.topAnchor, constant: 8).isActive = true
        likeButton.setImage(UIImage(named: Constant.likeButton), for: .normal)
        likeButton.translatesAutoresizingMaskIntoConstraints = false
        likeButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        likeButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        likeButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 13).isActive = true
        likeButton.topAnchor.constraint(equalTo: pageControl.topAnchor, constant: 8).isActive = true
    }

    private func setupImageViewPage() {
        natureImageView.contentMode = .scaleAspectFill
        natureImageView.translatesAutoresizingMaskIntoConstraints = false
        natureImageView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        natureImageView.heightAnchor.constraint(equalToConstant: 239).isActive = true
        natureImageView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        natureImageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        suatCanyonImageView.contentMode = .scaleAspectFill
        suatCanyonImageView.translatesAutoresizingMaskIntoConstraints = false
        suatCanyonImageView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        suatCanyonImageView.heightAnchor.constraint(equalToConstant: 239).isActive = true
        suatCanyonImageView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        suatCanyonImageView.leadingAnchor.constraint(equalTo: natureImageView.trailingAnchor).isActive = true
        suatCanyonImageViewTwo.contentMode = .scaleAspectFill
        suatCanyonImageViewTwo.translatesAutoresizingMaskIntoConstraints = false
        suatCanyonImageViewTwo.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        suatCanyonImageViewTwo.heightAnchor.constraint(equalToConstant: 239).isActive = true
        suatCanyonImageViewTwo.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        suatCanyonImageViewTwo.leadingAnchor.constraint(equalTo: suatCanyonImageView.trailingAnchor).isActive = true
        suatCanyonImageViewTwo.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        miniAvatraImageView.image = UIImage(named: Constant.miniImageAvatar)
        miniAvatraImageView.translatesAutoresizingMaskIntoConstraints = false
        miniAvatraImageView.widthAnchor.constraint(equalToConstant: 20).isActive = true
        miniAvatraImageView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        miniAvatraImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12)
            .isActive = true
        miniAvatraImageView.topAnchor.constraint(equalTo: turDagestanLabel.bottomAnchor, constant: 4)
            .isActive = true
        extraImage.translatesAutoresizingMaskIntoConstraints = false
        extraImage.widthAnchor.constraint(equalToConstant: 14).isActive = true
        extraImage.heightAnchor.constraint(equalToConstant: 2).isActive = true
        extraImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 33).isActive = true
        extraImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 347).isActive = true
    }

    private func setupPageControl() {
        pageControl.pageIndicatorTintColor = .gray
        pageControl.currentPageIndicatorTintColor = .black
        pageControl.numberOfPages = 3
        pageControl.addTarget(self, action: #selector(processEvents(sender:)), for: .valueChanged)
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.topAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 18).isActive = true
        pageControl.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
    }

    private func setupScrollView() {
        scrollView.backgroundColor = .white
        scrollView.isPagingEnabled = false
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: avatarTurDagestanImageView.bottomAnchor, constant: 10).isActive = true
        scrollView.heightAnchor.constraint(equalToConstant: 243).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
    }

    private func setupDagestanImageView() {
        avatarTurDagestanImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarTurDagestanImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        avatarTurDagestanImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        avatarTurDagestanImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
        avatarTurDagestanImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12)
            .isActive = true
    }

    @objc private func processEvents(sender: UIPageControl) {
        let offsetX = scrollView.bounds.width * CGFloat(sender.currentPage)
        scrollView.setContentOffset(CGPoint(x: offsetX, y: 0), animated: true)
    }
}
