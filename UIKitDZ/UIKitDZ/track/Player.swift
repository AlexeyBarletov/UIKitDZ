// Player.swift
// Copyright © RoadMap. All rights reserved.

import AVFoundation
import UIKit

class Player: UIViewController {
    var imageViewBackground = UIImageView()
    var imageBackground = UIImage(named: "image4")
    var imageViewAlbum = UIImageView()
    var imageAlbum = UIImage(named: "")
    var audioPlayerOne = AVAudioPlayer()
    var viewBackground = UIView()
    var timer = Timer()
    var buttomPlay = UIButton()
    var buttomRewindRight = UIButton()
    var buttomRewindLeft = UIButton()

    var slider = UISlider()
    var sliderVolum: UISlider!

    var listTrack = [InfoTrack]()

    var nameTrackLabel = UILabel()
    var namePerformer = UILabel()
    var labelTimeTrack = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupImageBackground()
        setupView()
        setupPlayer()
        setupButton()
        setupSlider()
        setupLabel()
        setupImage()
    }

    func setupImage() {
        imageViewAlbum = UIImageView(frame: CGRect(x: 20, y: 14, width: 75, height: 75))
        imageViewAlbum.image = imageAlbum
        imageViewAlbum.layer.cornerRadius = imageViewAlbum.frame.size.width / 2
        imageViewAlbum.clipsToBounds = true
        imageViewAlbum.layer.borderWidth = 1
        viewBackground.addSubview(imageViewAlbum)
    }

    func setupLabel() {
        nameTrackLabel = UILabel(frame: CGRect(x: 115, y: 26, width: 250, height: 29))
        nameTrackLabel.text = ""
        nameTrackLabel.textColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 1)
        nameTrackLabel.font = UIFont(name: "Verdana", size: 24)
        viewBackground.addSubview(nameTrackLabel)

        namePerformer = UILabel(frame: CGRect(x: 115, y: 58, width: 250, height: 19))
        namePerformer.textColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 1)
        namePerformer.text = "aaa"
        viewBackground.addSubview(namePerformer)

        labelTimeTrack = UILabel(frame: CGRect(x: 303, y: 128, width: 61, height: 21))
        labelTimeTrack.text = "04.03"
        labelTimeTrack.font = UIFont(name: "Verdana", size: 16)
        labelTimeTrack.textAlignment = .center
        labelTimeTrack.textColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 1)
        viewBackground.addSubview(labelTimeTrack)
    }

    func setupSlider() {
        slider = UISlider(frame: CGRect(x: 20, y: 108, width: 265, height: 20))
        slider.minimumTrackTintColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 0.6)
        slider.maximumValue = 0
        slider.maximumValue = 100
        timer = Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: #selector(settupSlaiderTimer),
            userInfo: nil,
            repeats: true
        )

        slider.addTarget(self, action: #selector(settupSlaiderTimer), for: .valueChanged)
        viewBackground.addSubview(slider)

        sliderVolum = UISlider(frame: CGRect(x: 14, y: 210, width: 100, height: 8))
        sliderVolum.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi / 2.0))
        sliderVolum.minimumValue = 0
        sliderVolum.maximumValue = 100
        sliderVolum.value = 50
        sliderVolum.addTarget(self, action: #selector(volumeChanged), for: .valueChanged)
        view.addSubview(sliderVolum)
    }

    @objc func settupSlaiderTimer() {
        slider.value = Float(audioPlayerOne.currentTime)
        let minutes = Int(audioPlayerOne.currentTime) / 60
        let second = Int(audioPlayerOne.currentTime) % 60
        labelTimeTrack.text = String(format: "%02d:%02d", minutes, second)
    }

    @objc func volumeChanged() {
        audioPlayerOne.volume = sliderVolum.value
    }

    func setupButton() {
        buttomPlay = UIButton(frame: CGRect(x: 164, y: 150, width: 45, height: 45))
        buttomPlay.setImage(UIImage(named: "play"), for: .normal)
        buttomPlay.addTarget(self, action: #selector(setupPlay), for: .touchUpInside)
        viewBackground.addSubview(buttomPlay)

        buttomRewindRight = UIButton(frame: CGRect(x: 231, y: 162, width: 24, height: 24))
        buttomRewindRight.setImage(UIImage(named: "right"), for: .normal)
        viewBackground.addSubview(buttomRewindRight)

        buttomRewindLeft = UIButton(frame: CGRect(x: 120, y: 162, width: 24, height: 24))
        buttomRewindLeft.setImage(UIImage(named: "left"), for: .normal)
        viewBackground.addSubview(buttomRewindLeft)
    }

    @objc func setupPlay(sender: UIButton) {
        if audioPlayerOne.isPlaying == true {
            audioPlayerOne.pause()
            buttomPlay.setImage(UIImage(named: "play"), for: .normal)
        } else {
            audioPlayerOne.play()
            buttomPlay.setImage(UIImage(named: "pause"), for: .normal)
        }
    }

    func setupImageBackground() {
        imageViewBackground = UIImageView(frame: view.bounds)
        imageViewBackground.image = imageBackground
        imageViewBackground.contentMode = .scaleAspectFill
        view.addSubview(imageViewBackground)
    }

    func setupView() {
        viewBackground = UIView(frame: CGRect(x: 0, y: 500, width: 389, height: 291))
        viewBackground.backgroundColor = UIColor(red: 104 / 255, green: 51 / 255, blue: 201 / 255, alpha: 0.7)
        view.addSubview(viewBackground)
    }

    func setupPlayer() {
        do {
            if let audio = Bundle.main.path(forResource: listTrack[0].nameTrack, ofType: "mp3") {
                try audioPlayerOne = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audio))
                slider.maximumValue = Float(audioPlayerOne.duration)
            }
        } catch {
            printContent("Error")
        }
        audioPlayerOne.play()
    }

    func configCell(albom: [InfoTrack]) {
        listTrack = albom
        imageAlbum = UIImage(named: albom[0].nameImage)
        namePerformer.text = albom[0].nameTrack
    }
}
