// Player.swift
// Copyright © RoadMap. All rights reserved.

import AVFoundation
import UIKit

/// класс
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
    var currentTrackIndex = 0
    var slider = UISlider()
    var sliderVolum: UISlider!
    var listTrack = [InfoTrack]()
    var nameTrackLabel = UILabel()
    var namePerformer = UILabel()
    var labelTimeTrack = UILabel()
    var buttonClose = UIButton()
    var buttonAiroplane = UIButton()

    // MARK: Life Cycle

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

    // MARK: Public Methods

    public func configCell(albom: [InfoTrack]) {
        listTrack = albom
        imageAlbum = UIImage(named: albom[0].nameImage)
        nameTrackLabel.text = albom[0].nameTrack
        namePerformer.text = albom[0].nameExecutor
        currentTrackIndex = 0
    }

    // MARK: Privates Methods

    private func setupImage() {
        imageViewAlbum = UIImageView(frame: CGRect(x: 20, y: 14, width: 75, height: 75))
        imageViewAlbum.image = imageAlbum
        imageViewAlbum.layer.cornerRadius = imageViewAlbum.frame.size.width / 2
        imageViewAlbum.clipsToBounds = true
        imageViewAlbum.layer.borderWidth = 1
        viewBackground.addSubview(imageViewAlbum)
    }

    // MARK: Privates Methods

    private func setupLabel() {
        nameTrackLabel.frame = CGRect(x: 115, y: 26, width: 250, height: 29)
        nameTrackLabel.textColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 1)
        nameTrackLabel.font = UIFont(name: "Verdana", size: 24)
        viewBackground.addSubview(nameTrackLabel)

        namePerformer.frame = CGRect(x: 115, y: 58, width: 250, height: 19)
        namePerformer.textColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 1)
        namePerformer.textAlignment = .left

        viewBackground.addSubview(namePerformer)

        labelTimeTrack = UILabel(frame: CGRect(x: 303, y: 128, width: 61, height: 21))
        labelTimeTrack.text = "04.03"
        labelTimeTrack.font = UIFont(name: "Verdana", size: 16)
        labelTimeTrack.textAlignment = .center
        labelTimeTrack.textColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 1)
        viewBackground.addSubview(labelTimeTrack)
    }

    // MARK: Privates Methods

    private func setupSlider() {
        slider = UISlider(frame: CGRect(x: 20, y: 108, width: 265, height: 20))
        slider.minimumTrackTintColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 0.6)
        slider.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        slider.layer.cornerRadius = 10
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
        sliderVolum.tintColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 0.6)
        sliderVolum.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi / 2.0))
        sliderVolum.minimumValue = 0
        sliderVolum.maximumValue = 100
        sliderVolum.value = 50
        sliderVolum.layer.cornerRadius = 10
        sliderVolum.clipsToBounds = true

        sliderVolum.addTarget(self, action: #selector(volumeChanged), for: .valueChanged)
        view.addSubview(sliderVolum)
    }

    // MARK: Privates Methods

    @objc private func settupSlaiderTimer() {
        slider.value = Float(audioPlayerOne.currentTime)
        let minutes = Int(audioPlayerOne.currentTime) / 60
        let second = Int(audioPlayerOne.currentTime) % 60
        labelTimeTrack.text = String(format: "%02d:%02d", minutes, second)
    }

    // MARK: Privates Methods

    @objc private func volumeChanged() {
        audioPlayerOne.volume = sliderVolum.value
    }

    // MARK: Privates Methods

    private func setupButton() {
        buttomPlay = UIButton(frame: CGRect(x: 164, y: 150, width: 45, height: 45))
        buttomPlay.setImage(UIImage(named: "play"), for: .normal)
        buttomPlay.addTarget(self, action: #selector(setupPlay), for: .touchUpInside)
        viewBackground.addSubview(buttomPlay)

        buttomRewindRight = UIButton(frame: CGRect(x: 231, y: 162, width: 24, height: 24))
        buttomRewindRight.setImage(UIImage(named: "right"), for: .normal)
        buttomRewindRight.addTarget(self, action: #selector(nextTrack), for: .touchUpInside)
        viewBackground.addSubview(buttomRewindRight)

        buttomRewindLeft = UIButton(frame: CGRect(x: 120, y: 162, width: 24, height: 24))
        buttomRewindLeft.setImage(UIImage(named: "left"), for: .normal)
        buttomRewindLeft.addTarget(self, action: #selector(previousTrack), for: .touchUpInside)
        viewBackground.addSubview(buttomRewindLeft)

        buttonClose = UIButton(frame: CGRect(x: 24, y: 24, width: 14, height: 14))
        buttonClose.setImage(UIImage(named: "close"), for: .normal)
        buttonClose.addTarget(self, action: #selector(closeWindow), for: .touchUpInside)
        view.addSubview(buttonClose)

        buttonAiroplane = UIButton(frame: CGRect(x: 338, y: 22, width: 21, height: 18))
        buttonAiroplane.setImage(UIImage(named: "airoplane"), for: .normal)
        view.addSubview(buttonAiroplane)
    }

    // MARK: Privates Methods

    @objc private func closeWindow() {
        dismiss(animated: true)
    }

    // MARK: Privates Methods

    @objc private func nextTrack() {
        currentTrackIndex += 1
        if currentTrackIndex >= listTrack.count {
            currentTrackIndex = 0
        }
        setupPlayer()
    }

    // MARK: Privates Methods

    @objc private func previousTrack() {
        currentTrackIndex -= 1
        if currentTrackIndex < 0 {
            currentTrackIndex = listTrack.count - 1
        }
        updateTrackInfo()
        setupPlayer()
    }

    // MARK: Privates Methods

    private func updateTrackInfo() {
        let currentTrack = listTrack[currentTrackIndex]
        nameTrackLabel.text = currentTrack.nameTrack
        namePerformer.text = currentTrack.nameExecutor
        imageAlbum = UIImage(named: currentTrack.nameImage)
        imageViewAlbum.image = imageAlbum
    }

    // MARK: Privates Methods

    @objc private func setupPlay(sender: UIButton) {
        if audioPlayerOne.isPlaying == true {
            audioPlayerOne.pause()
            buttomPlay.setImage(UIImage(named: "play"), for: .normal)
        } else {
            audioPlayerOne.play()
            buttomPlay.setImage(UIImage(named: "pause"), for: .normal)
        }
    }

    // MARK: Privates Methods

    private func setupImageBackground() {
        imageViewBackground = UIImageView(frame: view.bounds)
        imageViewBackground.image = imageBackground
        imageViewBackground.contentMode = .scaleAspectFill
        view.addSubview(imageViewBackground)
    }

    // MARK: Privates Methods

    private func setupView() {
        viewBackground = UIView(frame: CGRect(x: 0, y: 500, width: 389, height: 291))
        viewBackground.backgroundColor = UIColor(red: 104 / 255, green: 51 / 255, blue: 201 / 255, alpha: 0.7)
        view.addSubview(viewBackground)
    }

    // MARK: Privates Methods

    private func setupPlayer() {
        do {
            let currentTrack = listTrack[currentTrackIndex]
            if let audio = Bundle.main.path(forResource: currentTrack.nameTrack, ofType: "mp3") {
                try audioPlayerOne = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audio))
                slider.maximumValue = Float(audioPlayerOne.duration)
            }
        } catch {
            print("Error")
        }
        updateTrackInfo()
        audioPlayerOne.play()
    }
}
