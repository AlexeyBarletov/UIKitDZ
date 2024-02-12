// ViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

class ViewController: UIViewController {
    var labelPlayList = UILabel()
    var nameLabelTheBeatles = UILabel()
    var nameTraсkLabel = UILabel()
    var labelTimeTrack = UILabel()
    var nameLabelThebeatlerTwo = UILabel()
    var nameTrackLabelTwo = UILabel()
    var labelTimeTrackTwo = UILabel()
    var nameLabelTheQueen = UILabel()
    var nameTrackQueen = UILabel()
    var labelTimeTrackQueen = UILabel()

    var imageViewCover = UIImageView()
    var imageCover = UIImage(named: "image")

    var imageViewCoverNumberTwo = UIImageView()
    var imageCoverNumberTwo = UIImage(named: "image3")

    var imageViewCoverNumberThree = UIImageView()
    var imageCoverNumberThree = UIImage(named: "image2")

    var viewLine = UIView()
    var viewLineTwo = UIView()
    var viewLineThree = UIView()

    var buttonTranslitionOne = UIButton()
    var buttonTranslitionTwo = UIButton()

    var nameFont = "Verdana"
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupLabel()
        setupImageCover()
        translitionScreenPlayerOne()
    }

    // MARK: Private Func

    func setupView() {
        view.backgroundColor = UIColor(red: 72 / 255, green: 57 / 255, blue: 113 / 255, alpha: 1)

        viewLine = UIView(frame: CGRect(x: 20, y: 183, width: 335, height: 1))
        viewLine.backgroundColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 1)
        view.addSubview(viewLine)

        viewLineTwo = UIView(frame: CGRect(x: 20, y: 285, width: 335, height: 1))
        viewLineTwo.backgroundColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 1)
        view.addSubview(viewLineTwo)

        viewLineThree = UIView(frame: CGRect(x: 20, y: 387, width: 335, height: 1))
        viewLineThree.backgroundColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 1)
        view.addSubview(viewLineThree)
    }

    // MARK: Private Func

    func setupLabel() {
        labelPlayList = UILabel(frame: CGRect(x: 100, y: 47, width: 175, height: 22))
        labelPlayList.text = "Playlist"
        labelPlayList.font = UIFont(name: nameFont, size: 18)
        labelPlayList.textAlignment = .center
        labelPlayList.textColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 1)
        view.addSubview(labelPlayList)

        nameLabelTheBeatles = UILabel(frame: CGRect(x: 103, y: 112, width: 175, height: 19))
        nameLabelTheBeatles.text = "The Beatles"
        nameLabelTheBeatles.font = UIFont(name: nameFont, size: 18)
        nameLabelTheBeatles.textAlignment = .left
        nameLabelTheBeatles.textColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 1)
        view.addSubview(nameLabelTheBeatles)

        nameTraсkLabel = UILabel(frame: CGRect(x: 103, y: 139, width: 175, height: 16))
        nameTraсkLabel.text = "Let it be"
        nameTraсkLabel.font = UIFont(name: nameFont, size: 18)
        nameTraсkLabel.textAlignment = .left
        nameTraсkLabel.textColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 1)
        view.addSubview(nameTraсkLabel)

        labelTimeTrack = UILabel(frame: CGRect(x: 303, y: 128, width: 52, height: 19))
        labelTimeTrack.text = "04.03"
        labelTimeTrack.font = UIFont(name: nameFont, size: 16)
        labelTimeTrack.textAlignment = .center
        labelTimeTrack.textColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 1)
        view.addSubview(labelTimeTrack)

        nameLabelThebeatlerTwo = UILabel(frame: CGRect(x: 103, y: 214, width: 175, height: 19))
        nameLabelThebeatlerTwo.text = "The Beatles"
        nameLabelThebeatlerTwo.font = UIFont(name: nameFont, size: 18)
        nameLabelThebeatlerTwo.textAlignment = .left
        nameLabelThebeatlerTwo.textColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 1)
        view.addSubview(nameLabelThebeatlerTwo)

        nameTrackLabelTwo = UILabel(frame: CGRect(x: 103, y: 241, width: 200, height: 19))
        nameTrackLabelTwo.text = "Yesterday"
        nameTrackLabelTwo.font = UIFont(name: nameFont, size: 16)
        nameTrackLabelTwo.textAlignment = .left
        nameTrackLabelTwo.textColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 1)
        view.addSubview(nameTrackLabelTwo)

        labelTimeTrackTwo = UILabel(frame: CGRect(x: 303, y: 230, width: 52, height: 19))
        labelTimeTrackTwo.text = "02.05"
        labelTimeTrackTwo.font = UIFont(name: nameFont, size: 16)
        labelTimeTrackTwo.textAlignment = .center
        labelTimeTrackTwo.textColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 1)
        view.addSubview(labelTimeTrackTwo)

        nameLabelTheQueen = UILabel(frame: CGRect(x: 103, y: 316, width: 175, height: 19))
        nameLabelTheQueen.text = "Queen"
        nameLabelTheQueen.font = UIFont(name: nameFont, size: 18)
        nameLabelTheQueen.textAlignment = .left
        nameLabelTheQueen.textColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 1)
        view.addSubview(nameLabelTheQueen)

        nameTrackQueen = UILabel(frame: CGRect(x: 103, y: 334, width: 200, height: 38))
        nameTrackQueen.text = "The show Must Go on"
        nameTrackQueen.font = UIFont(name: nameFont, size: 16)
        nameTrackQueen.textAlignment = .left
        nameTrackQueen.textColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 1)
        view.addSubview(nameTrackQueen)

        labelTimeTrackQueen = UILabel(frame: CGRect(x: 303, y: 332, width: 52, height: 19))
        labelTimeTrackQueen.text = "04.31"
        labelTimeTrackQueen.font = UIFont(name: nameFont, size: 16)
        labelTimeTrackQueen.textAlignment = .center
        labelTimeTrackQueen.textColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 1)
        view.addSubview(labelTimeTrackQueen)
    }

    // MARK: Private Method

    func setupImageCover() {
        imageViewCover = UIImageView(frame: CGRect(x: 20, y: 100, width: 75, height: 75))
        imageViewCover.image = imageCover
        view.addSubview(imageViewCover)

        imageViewCoverNumberTwo = UIImageView(frame: CGRect(x: 20, y: 202, width: 75, height: 75))
        imageViewCoverNumberTwo.image = imageCoverNumberTwo
        view.addSubview(imageViewCoverNumberTwo)

        imageViewCoverNumberThree = UIImageView(frame: CGRect(x: 20, y: 305, width: 75, height: 75))
        imageViewCoverNumberThree.image = imageCoverNumberThree
        view.addSubview(imageViewCoverNumberThree)
    }

    // MARK: Переход на след экран с плеером

    func translitionScreenPlayerOne() {
        buttonTranslitionOne = UIButton(frame: CGRect(x: 20, y: 90, width: 350, height: 85))
        buttonTranslitionOne.addTarget(self, action: #selector(goScreenOne), for: .touchUpInside)
        view.addSubview(buttonTranslitionOne)

        buttonTranslitionTwo = UIButton(frame: CGRect(x: 20, y: 310, width: 350, height: 85))
        buttonTranslitionTwo.addTarget(self, action: #selector(storyBoardThree), for: .touchUpInside)
        view.addSubview(buttonTranslitionTwo)
    }

    @objc func goScreenOne() {
        let storyBoardOne = UIStoryboard(name: "Main", bundle: nil)
        guard let player = storyBoardOne.instantiateViewController(identifier: "Player") as? Player else { return }
        player.configCell(albom: [
            InfoTrack(nameTrack: "Queen - The Show Must Go On (Remastered 2011)", nameImage: "image"),
            InfoTrack(nameTrack: "Битлз - Let It Be", nameImage: "image2")
        ])
        present(player, animated: true)
    }

    @objc func storyBoardThree() {
        let storyBoardThree = UIStoryboard(name: "Main", bundle: nil)
        guard let player = storyBoardThree.instantiateViewController(identifier: "Player") as? Player else { return }
        player.configCell(albom: [
            InfoTrack(nameTrack: "Битлз - Let It Be", nameImage: "image2"),
            InfoTrack(nameTrack: "Queen - The Show Must Go On (Remastered 2011)", nameImage: "image")
        ])
        present(player, animated: true)
    }
}

struct InfoTrack {
    var nameTrack: String
    var nameImage: String
}
