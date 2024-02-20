// StoriesViewCell.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

class StoriesViewCell: UITableViewCell {
    static let indentifireStories = "StoriesViewCell"
    var scrollView = UIScrollView()

    var avatarImageView = UIImageView()
    var avatarTwoImageView = UIImageView()
    var avatarThreeImageView = UIImageView()
    var avatarFourImagesView = UIImageView()
    var avatarFiveImagesView = UIImageView()

    
    var images = [UIImage(named: "wuman"),
                  UIImage(named: "avatarWumanTwo"),
                  UIImage(named: "avatarWumanTwo"),
                  UIImage(named: "avatarWumanTwo"),
                  UIImage(named: "avatarWumanTwo")]

    private func setupScrollView() {
        contentView.addSubview(scrollView)
        scrollView.backgroundColor = .white
        scrollView.addSubview(avatarImageView)
        scrollView.addSubview(avatarTwoImageView)
        scrollView.addSubview(avatarThreeImageView)
        scrollView.addSubview(avatarFourImagesView)
        scrollView.addSubview(avatarFiveImagesView)
        
        
        avatarFiveImagesView.translatesAutoresizingMaskIntoConstraints = false
        avatarFiveImagesView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 7).isActive = true
        avatarFiveImagesView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 340).isActive = true
        avatarFiveImagesView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        avatarFiveImagesView.heightAnchor.constraint(equalToConstant: 60).isActive = true

        
        avatarFourImagesView.translatesAutoresizingMaskIntoConstraints = false
        avatarFourImagesView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 7).isActive = true
        avatarFourImagesView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 258).isActive = true
        avatarFourImagesView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        avatarFourImagesView.heightAnchor.constraint(equalToConstant: 60).isActive = true

        avatarThreeImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarThreeImageView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 7).isActive = true
        avatarThreeImageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 176).isActive = true
        avatarThreeImageView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        avatarThreeImageView.heightAnchor.constraint(equalToConstant: 60).isActive = true

        
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarImageView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 7).isActive = true
        avatarImageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 12).isActive = true
        avatarImageView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        avatarImageView.heightAnchor.constraint(equalToConstant: 60).isActive = true

        avatarTwoImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarTwoImageView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 7).isActive = true
        avatarTwoImageView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        avatarTwoImageView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        avatarTwoImageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 94).isActive = true

        scrollView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }

    func setup(images: [UIImage]) {
        setupScrollView()
        avatarImageView.image = images[0]
        avatarTwoImageView.image = images[1]
        avatarThreeImageView.image = images[2]
        avatarFourImagesView.image = images[3]
        avatarFiveImagesView.image = images[4]

    }
}
