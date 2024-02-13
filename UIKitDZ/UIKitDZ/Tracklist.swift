// Tracklist.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// класс
class Tracklist: UIViewController {
    var labelPlayList = UILabel()
    var nameLabelTheBeatles = UILabel()
    var nameTraсkLabel = UILabel()
    var labelTimeTrack = UILabel()
    var nameLabelTheQueen = UILabel()
    var nameTrackQueen = UILabel()
    var labelTimeTrackQueen = UILabel()
    var imageViewCoverOne = UIImageView()
    var imageCoverOne = UIImage(named: "image")
    var imageViewCoverNumberTwo = UIImageView()
    var imageCoverNumberTwo = UIImage(named: "image2")
    var viewLine = UIView()
    var viewLineThree = UIView()
    var buttonTranslitionOne = UIButton()
    var buttonTranslitionTwo = UIButton()
    var nameFont = "Verdana"

    // MARK: Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupLabel()
        setupImageCover()
        translitionScreenPlayerOne()
    }

    // MARK: Privates Methods

    private func setupView() {
        view.backgroundColor = UIColor(red: 72 / 255, green: 57 / 255, blue: 113 / 255, alpha: 1)

        viewLine = UIView(frame: CGRect(x: 20, y: 183, width: 335, height: 1))
        viewLine.backgroundColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 1)
        view.addSubview(viewLine)

        viewLineThree = UIView(frame: CGRect(x: 20, y: 285, width: 335, height: 1))
        viewLineThree.backgroundColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 1)
        view.addSubview(viewLineThree)
    }

    // MARK: Privates Methods

    private func setupLabel() {
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

        nameLabelTheQueen = UILabel(frame: CGRect(x: 103, y: 214, width: 175, height: 19))
        nameLabelTheQueen.text = "Queen"
        nameLabelTheQueen.font = UIFont(name: nameFont, size: 18)
        nameLabelTheQueen.textAlignment = .left
        nameLabelTheQueen.textColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 1)
        view.addSubview(nameLabelTheQueen)

        nameTrackQueen = UILabel(frame: CGRect(x: 103, y: 241, width: 200, height: 38))
        nameTrackQueen.text = "The show Must Go on"
        nameTrackQueen.font = UIFont(name: nameFont, size: 16)
        nameTrackQueen.textAlignment = .left
        nameTrackQueen.textColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 1)
        view.addSubview(nameTrackQueen)

        labelTimeTrackQueen = UILabel(frame: CGRect(x: 303, y: 230, width: 52, height: 19))
        labelTimeTrackQueen.text = "04.31"
        labelTimeTrackQueen.font = UIFont(name: nameFont, size: 16)
        labelTimeTrackQueen.textAlignment = .center
        labelTimeTrackQueen.textColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 1)
        view.addSubview(labelTimeTrackQueen)
    }

    // MARK: Privates Methods

    private func setupImageCover() {
        imageViewCoverOne = UIImageView(frame: CGRect(x: 20, y: 100, width: 75, height: 75))
        imageViewCoverOne.image = imageCoverOne
        view.addSubview(imageViewCoverOne)

        imageViewCoverNumberTwo = UIImageView(frame: CGRect(x: 20, y: 202, width: 75, height: 75))
        imageViewCoverNumberTwo.image = imageCoverNumberTwo
        view.addSubview(imageViewCoverNumberTwo)
    }

    // MARK: Privates Methods

    private func translitionScreenPlayerOne() {
        buttonTranslitionOne = UIButton(frame: CGRect(x: 20, y: 90, width: 350, height: 85))
        buttonTranslitionOne.addTarget(self, action: #selector(goScreenOne), for: .touchUpInside)
        view.addSubview(buttonTranslitionOne)

        buttonTranslitionTwo = UIButton(frame: CGRect(x: 20, y: 190, width: 350, height: 85))
        buttonTranslitionTwo.addTarget(self, action: #selector(storyBoardTwo), for: .touchUpInside)
        view.addSubview(buttonTranslitionTwo)
    }

    // MARK: Privates Methods

    @objc private func goScreenOne() {
        let storyBoardOne = UIStoryboard(name: "Main", bundle: nil)
        guard let player = storyBoardOne.instantiateViewController(identifier: "Player") as? Player else { return }
        player.configCell(albom: [
            InfoTrack(nameTrack: "Let it be", nameImage: "image", nameExecutor: "The Beatles"),
            InfoTrack(nameTrack: "The Show Must Go On", nameImage: "image2", nameExecutor: "Queen")
        ])
        present(player, animated: true)
    }

    // MARK: Privates Methods

    @objc private func storyBoardTwo() {
        let storyBoardTwo = UIStoryboard(name: "Main", bundle: nil)
        guard let player = storyBoardTwo.instantiateViewController(identifier: "Player") as? Player else { return }
        player.configCell(albom: [
            InfoTrack(nameTrack: "The Show Must Go On", nameImage: "image2", nameExecutor: "The Beatles"),
            InfoTrack(nameTrack: "Let it be", nameImage: "image", nameExecutor: "Queen")
        ])
        present(player, animated: true)
    }
}

/// для передачи информации
struct InfoTrack {
    var nameTrack: String
    var nameImage: String
    var nameExecutor: String
}
