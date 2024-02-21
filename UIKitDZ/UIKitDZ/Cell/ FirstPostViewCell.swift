//   FirstPostViewCell.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

final class FirstPostViewCell: UITableViewCell {
    enum Constant {
        static let fontVerdana = "Verdana-Bold"
    }

    static let indentifireFirstPost = "FirstPostViewCell"
    private var avatarTurDagestanImageView = UIImageView()
    private var textTurdagestanLabel = UILabel()
    private var extraImage = UIImageView()
    private var scrollView = UIScrollView()
    private var pageControl = UIPageControl()
    private var natureImageView = UIImageView()
    private var suatCanyonImageView = UIImageView()
    private var suatCanyonImageViewTwo = UIImageView()
    private var likeButton = UIButton()
    private var messageButton = UIButton()
    private var airplaneButton = UIButton()
    private var favoritesButton = UIButton()
    private var miniAvatraImageView = UIImageView()
    private var miniImageAvatar = UIImage(named: "miniAvatar")
    private var likeLabel = UILabel()
    private var turDagestanLabel = UILabel()
    private var commentLabel = UILabel()
    private var minutesLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .white
        setupDagestanImageView()
        setupExtraButton()
        setupScrollView()
        setupPageControl()
        setupImageViewPage()
        // setupImageView()
        setupButton()

        // setupLabel()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // private func setupImageView() {
//        miniAvatraImageView.image = miniImageAvatar
//        miniAvatraImageView.translatesAutoresizingMaskIntoConstraints = false
//        miniAvatraImageView.widthAnchor.constraint(equalToConstant: 20).isActive = true
//        miniAvatraImageView.heightAnchor.constraint(equalToConstant: 20).isActive = true
//        miniAvatraImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12).isActive = true
//        miniAvatraImageView.topAnchor.constraint(equalTo: turDagestanLabel.bottomAnchor, constant: 4).isActive = true
    // }

    private func setupButton() {
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
        messageButton.setImage(UIImage(named: "message"), for: .normal)
        likeButton.setImage(UIImage(named: "like"), for: .normal)
        airplaneButton.setImage(UIImage(named: "airplane"), for: .normal)
        favoritesButton.setImage(UIImage(named: "favorites"), for: .normal)

        favoritesButton.translatesAutoresizingMaskIntoConstraints = false
        favoritesButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        favoritesButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        favoritesButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 342).isActive = true
        favoritesButton.topAnchor.constraint(equalTo: pageControl.topAnchor, constant: 8).isActive = true

        airplaneButton.translatesAutoresizingMaskIntoConstraints = false
        airplaneButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        airplaneButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        airplaneButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 77).isActive = true
        airplaneButton.topAnchor.constraint(equalTo: pageControl.topAnchor, constant: 8).isActive = true

        messageButton.translatesAutoresizingMaskIntoConstraints = false
        messageButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        messageButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        messageButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 42).isActive = true
        messageButton.topAnchor.constraint(equalTo: pageControl.topAnchor, constant: 8).isActive = true

        likeButton.translatesAutoresizingMaskIntoConstraints = false
        likeButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        likeButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        likeButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 13).isActive = true
        likeButton.topAnchor.constraint(equalTo: pageControl.topAnchor, constant: 8).isActive = true
        likeLabel.text = "Нравится: 201"
        likeLabel.font = UIFont(name: Constant.fontVerdana, size: 10)
        likeLabel.textAlignment = .left
        likeLabel.textColor = UIColor(red: 46 / 255, green: 45 / 255, blue: 45 / 255, alpha: 1)

        likeLabel.translatesAutoresizingMaskIntoConstraints = false
        likeLabel.widthAnchor.constraint(equalToConstant: 107).isActive = true
        likeLabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        likeLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12).isActive = true
        likeLabel.topAnchor.constraint(equalTo: likeButton.bottomAnchor, constant: 10).isActive = true

        turDagestanLabel
            .text = "tur_v_dagestan Насладитесь красотой природы. Забронировать тур в Дагестан можно уже сейчас!"
        turDagestanLabel.textColor = UIColor(red: 46 / 255, green: 45 / 255, blue: 45 / 255, alpha: 1)
        turDagestanLabel.textAlignment = .left
        turDagestanLabel.numberOfLines = 2
        turDagestanLabel.font = UIFont(name: Constant.fontVerdana, size: 10)

        turDagestanLabel.translatesAutoresizingMaskIntoConstraints = false
        turDagestanLabel.widthAnchor.constraint(equalToConstant: 361).isActive = true
        turDagestanLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        turDagestanLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12).isActive = true
        turDagestanLabel.topAnchor.constraint(equalTo: likeLabel.bottomAnchor, constant: 6).isActive = true

        textTurdagestanLabel.font = UIFont(name: Constant.fontVerdana, size: 12)
        textTurdagestanLabel.textColor = UIColor(red: 46 / 255, green: 45 / 255, blue: 45 / 255, alpha: 1)

        textTurdagestanLabel.translatesAutoresizingMaskIntoConstraints = false
        textTurdagestanLabel.widthAnchor.constraint(equalToConstant: 107).isActive = true
        textTurdagestanLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        textTurdagestanLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
        textTurdagestanLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 48).isActive = true
        commentLabel.text = "Комментировать ..."
        commentLabel.font = UIFont(name: Constant.fontVerdana, size: 10)
        commentLabel.textAlignment = .left
        commentLabel.textColor = UIColor(red: 144 / 255, green: 145 / 255, blue: 145 / 255, alpha: 1)

        commentLabel.translatesAutoresizingMaskIntoConstraints = false
        commentLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        commentLabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        commentLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 35).isActive = true
        commentLabel.topAnchor.constraint(equalTo: turDagestanLabel.bottomAnchor, constant: 6).isActive = true

        miniAvatraImageView.image = miniImageAvatar
        miniAvatraImageView.translatesAutoresizingMaskIntoConstraints = false
        miniAvatraImageView.widthAnchor.constraint(equalToConstant: 20).isActive = true
        miniAvatraImageView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        miniAvatraImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12)
            .isActive = true
        miniAvatraImageView.topAnchor.constraint(equalTo: turDagestanLabel.bottomAnchor, constant: 4)
            .isActive = true

        minutesLabel.text = "10 минут назад"
        minutesLabel.font = UIFont(name: Constant.fontVerdana, size: 10)
        minutesLabel.textAlignment = .left
        minutesLabel.textColor = UIColor(red: 46 / 255, green: 45 / 255, blue: 45 / 255, alpha: 1)

        minutesLabel.translatesAutoresizingMaskIntoConstraints = false
        minutesLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        minutesLabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        minutesLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12).isActive = true
        minutesLabel.topAnchor.constraint(equalTo: miniAvatraImageView.bottomAnchor, constant: 8).isActive = true
    }

    private func setupImageViewPage() {
        scrollView.addSubview(suatCanyonImageViewTwo)
        scrollView.addSubview(suatCanyonImageView)
        scrollView.addSubview(natureImageView)

        natureImageView.translatesAutoresizingMaskIntoConstraints = false
        natureImageView.widthAnchor.constraint(equalToConstant: 375).isActive = true
        natureImageView.heightAnchor.constraint(equalToConstant: 279).isActive = true
        natureImageView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        natureImageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor)
            .isActive = true

        suatCanyonImageView.translatesAutoresizingMaskIntoConstraints = false
        suatCanyonImageView.widthAnchor.constraint(equalToConstant: 375).isActive = true
        suatCanyonImageView.heightAnchor.constraint(equalToConstant: 279).isActive = true
        suatCanyonImageView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        suatCanyonImageView.leadingAnchor.constraint(equalTo: natureImageView.trailingAnchor).isActive = true

        suatCanyonImageViewTwo.translatesAutoresizingMaskIntoConstraints = false
        suatCanyonImageViewTwo.widthAnchor.constraint(equalToConstant: 375).isActive = true
        suatCanyonImageViewTwo.heightAnchor.constraint(equalToConstant: 279).isActive = true
        suatCanyonImageViewTwo.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        suatCanyonImageViewTwo.leadingAnchor.constraint(equalTo: suatCanyonImageView.trailingAnchor).isActive = true
    }

    private func setupPageControl() {
        contentView.addSubview(pageControl)
        pageControl.pageIndicatorTintColor = .gray
        pageControl.currentPageIndicatorTintColor = .black
        pageControl.numberOfPages = 3
        pageControl.addTarget(self, action: #selector(processEvents(sender:)), for: .valueChanged)
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.topAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 18).isActive = true
        pageControl.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
    }

    @objc private func processEvents(sender: UIPageControl) {
        let offsetX = scrollView.bounds.width * CGFloat(sender.currentPage)
        scrollView.setContentOffset(CGPoint(x: offsetX, y: 0), animated: true)
    }

    private func setupScrollView() {
        contentView.addSubview(scrollView)
        scrollView.backgroundColor = .white
        scrollView.isPagingEnabled = true

        scrollView.showsHorizontalScrollIndicator = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false

        scrollView.topAnchor.constraint(equalTo: avatarTurDagestanImageView.bottomAnchor, constant: 10).isActive = true
        scrollView.heightAnchor.constraint(equalToConstant: 239).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
    }

    private func setupDagestanImageView() {
        contentView.addSubview(avatarTurDagestanImageView)
        avatarTurDagestanImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarTurDagestanImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        avatarTurDagestanImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        avatarTurDagestanImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
        avatarTurDagestanImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12)
            .isActive = true
    }

//    private func setupLabel() {
//        contentView.addSubview(likeLabel)
//        likeLabel.text = "Нравится: 201"
//        likeLabel.font = UIFont(name: Constant.fontVerdana, size: 10)
//        likeLabel.textAlignment = .left
//        likeLabel.textColor = UIColor(red: 46 / 255, green: 45 / 255, blue: 45 / 255, alpha: 1)
//
//        likeLabel.translatesAutoresizingMaskIntoConstraints = false
//        likeLabel.widthAnchor.constraint(equalToConstant: 107).isActive = true
//        likeLabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
//        likeLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12).isActive = true
//        likeLabel.topAnchor.constraint(equalTo: likeButton.bottomAnchor, constant: 10).isActive = true
//        contentView.addSubview(turDagestanLabel)
//
//        turDagestanLabel
//            .text = "tur_v_dagestan Насладитесь красотой природы. Забронировать тур в Дагестан можно уже сейчас!"
//        turDagestanLabel.textColor = UIColor(red: 46 / 255, green: 45 / 255, blue: 45 / 255, alpha: 1)
//        turDagestanLabel.textAlignment = .left
//        turDagestanLabel.numberOfLines = 2
//        turDagestanLabel.font = UIFont(name: Constant.fontVerdana, size: 10)
//
//        turDagestanLabel.translatesAutoresizingMaskIntoConstraints = false
//        turDagestanLabel.widthAnchor.constraint(equalToConstant: 361).isActive = true
//        turDagestanLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
//        turDagestanLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12).isActive = true
//        turDagestanLabel.topAnchor.constraint(equalTo: likeLabel.bottomAnchor, constant: 6).isActive = true
//
//        contentView.addSubview(textTurdagestanLabel)
//        textTurdagestanLabel.font = UIFont(name: Constant.fontVerdana, size: 12)
//        textTurdagestanLabel.textColor = UIColor(red: 46 / 255, green: 45 / 255, blue: 45 / 255, alpha: 1)
//
//        textTurdagestanLabel.translatesAutoresizingMaskIntoConstraints = false
//        textTurdagestanLabel.widthAnchor.constraint(equalToConstant: 107).isActive = true
//        textTurdagestanLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
//        textTurdagestanLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
//        textTurdagestanLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 48).isActive = true
//
//        contentView.addSubview(commentLabel)
//        commentLabel.text = "Комментировать ..."
//        commentLabel.font = UIFont(name: Constant.fontVerdana, size: 10)
//        commentLabel.textAlignment = .left
//        commentLabel.textColor = UIColor(red: 144 / 255, green: 145 / 255, blue: 145 / 255, alpha: 1)
//
//        commentLabel.translatesAutoresizingMaskIntoConstraints = false
//        commentLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
//        commentLabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
//        commentLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 35).isActive = true
//        commentLabel.topAnchor.constraint(equalTo: turDagestanLabel.bottomAnchor, constant: 6).isActive = true
//
//        contentView.addSubview(minutesLabel)
//        minutesLabel.text = "10 минут назад"
//        minutesLabel.font = UIFont(name: Constant.fontVerdana, size: 10)
//        minutesLabel.textAlignment = .left
//        minutesLabel.textColor = UIColor(red: 46 / 255, green: 45 / 255, blue: 45 / 255, alpha: 1)
//
//        minutesLabel.translatesAutoresizingMaskIntoConstraints = true
//        minutesLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
//        minutesLabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
//        minutesLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12).isActive = true
//        minutesLabel.topAnchor.constraint(equalTo: commentLabel.bottomAnchor, constant: 7).isActive = true
//    }

    private func setupExtraButton() {
        contentView.addSubview(extraImage)

        extraImage.translatesAutoresizingMaskIntoConstraints = false
        extraImage.widthAnchor.constraint(equalToConstant: 14).isActive = true
        extraImage.heightAnchor.constraint(equalToConstant: 2).isActive = true
        extraImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 33).isActive = true
        extraImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 347).isActive = true
    }

    func setup(param: [FirstPost]) {
        avatarTurDagestanImageView.image = UIImage(named: param[0].avatar)
        natureImageView.image = UIImage(named: param[0].nature)
        suatCanyonImageView.image = UIImage(named: param[0].suatCanyon)
        suatCanyonImageViewTwo.image = UIImage(named: param[0].suatCanyon)
        textTurdagestanLabel.text = param[0].label
        extraImage.image = UIImage(named: param[0].extraButton)
    }
}
