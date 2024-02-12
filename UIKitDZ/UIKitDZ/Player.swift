// Player.swift
// Copyright © RoadMap. All rights reserved.

//
//  Player.swift
//  practik
//
//  Created by Алексей Барлетов on 12.02.2024.
//
import AVFoundation
import UIKit

class Player: UIViewController {
    var imageViewBackground = UIImageView()
    var imageBackground = UIImage(named: "image4")

    var audioPlayerOne: AVAudioPlayer?
    var audioPlayerTwo: AVAudioPlayer?
    var audioPlayerThree: AVAudioPlayer?

    var viewBackground = UIView()

    var buttomPlay = UIButton()
    var buttomRewindRight = UIButton()
    var buttomRewindLeft = UIButton()

    var slider = UISlider()
    var sliderVolum = UISlider()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupImageBackground()
        setupView()
        setupPlayer()
        setupButton()
        setupSlider()
    }

    func setupSlider() {
        slider = UISlider(frame: CGRect(x: 20, y: 108, width: 265, height: 20))
        slider.minimumTrackTintColor = UIColor(red: 255 / 255, green: 253 / 255, blue: 253 / 255, alpha: 0.6)
        // slider.addTarget(self, action: #selector(), for: .touchUpInside)
        viewBackground.addSubview(slider)

        sliderVolum = UISlider(frame: CGRect(x: 14, y: 210, width: 100, height: 8))
        sliderVolum.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi / 2.0))
        sliderVolum.minimumValue = 0
        sliderVolum.maximumValue = 100
        sliderVolum.value = 50
        sliderVolum.addTarget(self, action: #selector(volumeChanged), for: .valueChanged)
        view.addSubview(sliderVolum)
    }

    @objc func volumeChanged() {
        audioPlayerOne?.volume = sliderVolum.value
    }

//    @objc func setupSlider() {
//    }

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
        if audioPlayerOne?.isPlaying == true {
            audioPlayerOne?.pause()
            buttomPlay.setImage(UIImage(named: "play"), for: .normal)
        } else {
            audioPlayerOne?.play()
            buttomPlay.setImage(UIImage(named: "pause"), for: .normal)
        }
    }

    func setupImageBackground() {
        imageViewBackground = UIImageView(frame: CGRect(x: 0, y: 0, width: 375, height: 761))
        imageViewBackground.image = imageBackground
        view.addSubview(imageViewBackground)
    }

    func setupView() {
        viewBackground = UIView(frame: CGRect(x: 0, y: 470, width: 375, height: 291))
        viewBackground.backgroundColor = UIColor(red: 104 / 255, green: 51 / 255, blue: 201 / 255, alpha: 0.7)
        view.addSubview(viewBackground)
    }

    func setupPlayer() {
        guard let urlOne = Bundle.main.url(forResource: "1", withExtension: "mp3"),
              let urlTwo = Bundle.main.url(forResource: "2", withExtension: "mp3"),
              let urlThree = Bundle.main.url(forResource: "3", withExtension: "mp3")
        else {
            return
        }

        do {
            audioPlayerOne = try AVAudioPlayer(contentsOf: urlOne)
            audioPlayerTwo = try AVAudioPlayer(contentsOf: urlTwo)
            audioPlayerThree = try AVAudioPlayer(contentsOf: urlThree)
        } catch {
            print("Error")
        }
    }
}
