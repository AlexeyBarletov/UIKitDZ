// BirthdayInformation.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// класс
class BirthdayInformation: UIViewController {
    var copyLabel = UILabel()

    var copyImageViewHelena = UIImageView()
    var copyImageViewVerona = UIImageView()
    var copyImageViewAlex = UIImageView()
    var copyImageViewTom = UIImageView()

    var imageHelena = UIImage(named: "3")
    var imageVerona = UIImage(named: "4")
    var imageAlex = UIImage(named: "1")
    var imageTom = UIImage(named: "2")
    var imageHelenaCake = UIImage(named: "helena")
    var imageViewHelenaCake = UIImageView()
    let fontName = "Verdana"
    var storyBoord = UIStoryboard()

    var nameLabelVerona = UILabel()
    var nameLabelHelena = UILabel()
    var nameLabelAlex = UILabel()
    var nameLabelTom = UILabel()
    var labelAgeVerona = UILabel()
    var labelAgeTom = UILabel()
    var labelAgeAlex = UILabel()

    var nameLabelAlexey = UILabel()
    var myName = UILabel()
    var myFotosImageView = UIImageView()
    var myFotosImage = UIImage(named: "")

    var labelBirthDayHelena = UILabel()
    var labelBirthDayVerona = UILabel()
    var labelBirthDayAlex = UILabel()
    var labelBirthDayTomas = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupBarButtonItem()
        setupLabelNameLastName()
        setuplLabel()
        setupImageView()
        setupMyInfo()
        settingLabelDateOfBirth()
    }

    func settingLabelDateOfBirth() {
        labelBirthDayHelena = UILabel(frame: CGRect(x: 102, y: 147, width: 209, height: 20))
        labelBirthDayHelena.text = "10.03 - turns 25"
        if let customFont = UIFont(name: fontName, size: 14) {
            labelBirthDayHelena.font = customFont
            view.addSubview(labelBirthDayHelena)
        }
        labelBirthDayVerona = UILabel(frame: CGRect(x: 102, y: 242, width: 209, height: 20))
        labelBirthDayVerona.text = "20.03 - turns 39"
        if let customFont = UIFont(name: fontName, size: 14) {
            labelBirthDayVerona.font = customFont
            view.addSubview(labelBirthDayVerona)
        }
        labelBirthDayAlex = UILabel(frame: CGRect(x: 102, y: 337, width: 209, height: 20))
        labelBirthDayAlex.text = "21.04 - turns 51"
        if let customFont = UIFont(name: fontName, size: 14) {
            labelBirthDayAlex.font = customFont
            view.addSubview(labelBirthDayAlex)
        }
        labelBirthDayTomas = UILabel(frame: CGRect(x: 102, y: 432, width: 209, height: 20))
        labelBirthDayTomas.text = "05.06 - turns 18"
        if let customFont = UIFont(name: fontName, size: 14) {
            labelBirthDayTomas.font = customFont
            view.addSubview(labelBirthDayTomas)
        }
    }

    func setupMyInfo() {
        myName = UILabel(frame: CGRect(x: 105, y: 499, width: 209, height: 20))
        myName.text = ""
        myName.shadowColor = .black
        myName.shadowOffset = CGSize(width: 1, height: 1)
        if let customFont = UIFont(name: fontName, size: 16) {
            myName.font = customFont
            view.addSubview(myName)

            myFotosImageView = UIImageView(frame: CGRect(x: 22, y: 490, width: 75, height: 75))
            myFotosImageView.image = myFotosImage
            view.addSubview(myFotosImageView)

            nameLabelAlexey = UILabel(frame: CGRect(x: 105, y: 527, width: 209, height: 20))
            nameLabelAlexey.text = ""
            if let customFont = UIFont(name: fontName, size: 14) {
                nameLabelAlexey.font = customFont
                view.addSubview(nameLabelAlexey)
            }
        }
    }

    func setupBarButtonItem() {
        navigationItem.title = copyLabel.text
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(moveForvard)
        )
    }

    @objc func moveForvard() {
        let modalViewController = InformationScreen()
        modalViewController.dataDelegate = self
        modalViewController.modalPresentationStyle = .automatic
        present(modalViewController, animated: true, completion: nil)
    }

    func setupLabelNameLastName() {
        nameLabelVerona = UILabel(frame: CGRect(x: 102, y: 119, width: 209, height: 20))
        nameLabelVerona.text = "Helena Link"
        nameLabelVerona.shadowColor = .black
        nameLabelVerona.shadowOffset = CGSize(width: 1, height: 1)
        if let customFont = UIFont(name: fontName, size: 16) {
            nameLabelVerona.font = customFont
        }
        view.addSubview(nameLabelVerona)

        nameLabelVerona = UILabel(frame: CGRect(x: 103, y: 214, width: 209, height: 20))
        nameLabelVerona.text = "Verona Tusk"
        nameLabelVerona.shadowColor = .black
        nameLabelVerona.shadowOffset = CGSize(width: 1, height: 1)
        if let customFont = UIFont(name: fontName, size: 16) {
            nameLabelVerona.font = customFont
        }
        view.addSubview(nameLabelVerona)

        nameLabelAlex = UILabel(frame: CGRect(x: 103, y: 309, width: 209, height: 20))
        nameLabelAlex.text = "Alex Smitch"
        nameLabelAlex.shadowColor = .black
        nameLabelAlex.shadowOffset = CGSize(width: 1, height: 1)
        if let customFont = UIFont(name: fontName, size: 16) {
            nameLabelVerona.font = customFont
        }
        view.addSubview(nameLabelAlex)

        nameLabelTom = UILabel(frame: CGRect(x: 105, y: 404, width: 209, height: 20))
        nameLabelTom.text = "Alex Smitch"
        nameLabelTom.shadowColor = .black
        nameLabelTom.shadowOffset = CGSize(width: 1, height: 1)
        if let customFont = UIFont(name: fontName, size: 16) {
            nameLabelVerona.font = customFont
        }
        view.addSubview(nameLabelTom)
    }

    private func setuplLabel() {
        copyLabel.text = "Brithday Reminder"
        view.addSubview(copyLabel)

        labelAgeVerona = UILabel(frame: CGRect(x: 315, y: 214, width: 42, height: 44))
        labelAgeVerona.text = "10 days"
        labelAgeVerona.textAlignment = .center
        labelAgeVerona.numberOfLines = 2
        labelAgeVerona.textColor = UIColor(red: 90 / 255, green: 67 / 255, blue: 148 / 255, alpha: 1)
        labelAgeVerona.shadowColor = UIColor(red: 90 / 255, green: 67 / 255, blue: 148 / 255, alpha: 1)
        labelAgeVerona.shadowOffset = CGSize(width: 1, height: 1)
        if let customFont = UIFont(name: fontName, size: 16) {
            labelAgeVerona.font = customFont
        }
        view.addSubview(labelAgeVerona)

        labelAgeVerona = UILabel(frame: CGRect(x: 315, y: 309, width: 42, height: 44))
        labelAgeVerona.text = "42 days"
        labelAgeVerona.textAlignment = .center
        labelAgeVerona.numberOfLines = 2
        labelAgeVerona.textColor = UIColor(red: 90 / 255, green: 67 / 255, blue: 148 / 255, alpha: 1)
        labelAgeVerona.shadowColor = UIColor(red: 90 / 255, green: 67 / 255, blue: 148 / 255, alpha: 1)
        labelAgeVerona.shadowOffset = CGSize(width: 1, height: 1)
        if let customFont = UIFont(name: fontName, size: 16) {
            labelAgeVerona.font = customFont
        }
        view.addSubview(labelAgeVerona)

        labelAgeAlex = UILabel(frame: CGRect(x: 317, y: 404, width: 42, height: 44))
        labelAgeAlex.text = "87 days"
        labelAgeAlex.textAlignment = .center
        labelAgeAlex.numberOfLines = 2
        labelAgeAlex.textColor = UIColor(red: 90 / 255, green: 67 / 255, blue: 148 / 255, alpha: 1)
        labelAgeAlex.shadowColor = UIColor(red: 90 / 255, green: 67 / 255, blue: 148 / 255, alpha: 1)
        labelAgeAlex.shadowOffset = CGSize(width: 1, height: 1)
        if let customFont = UIFont(name: fontName, size: 16) {
            labelAgeAlex.font = customFont
        }
        view.addSubview(labelAgeAlex)
    }

    func setupImageView() {
        copyImageViewHelena = UIImageView(frame: CGRect(x: 19, y: 105, width: 75, height: 75))
        copyImageViewHelena.image = imageHelena
        view.addSubview(copyImageViewHelena)

        copyImageViewVerona = UIImageView(frame: CGRect(x: 20, y: 200, width: 75, height: 75))
        copyImageViewVerona.image = imageVerona
        view.addSubview(copyImageViewVerona)

        copyImageViewAlex = UIImageView(frame: CGRect(x: 20, y: 296, width: 75, height: 75))
        copyImageViewAlex.image = imageAlex
        view.addSubview(copyImageViewAlex)

        copyImageViewTom = UIImageView(frame: CGRect(x: 22, y: 390, width: 75, height: 75))
        copyImageViewTom.image = imageTom
        view.addSubview(copyImageViewTom)

        imageViewHelenaCake = UIImageView(frame: CGRect(x: 314, y: 119, width: 44, height: 44))
        imageViewHelenaCake.image = imageHelenaCake
        view.addSubview(imageViewHelenaCake)
    }
}

extension BirthdayInformation: DataDelegate {
    func tranlition(name: String, dataDay: String, image: UIImage) {
        nameLabelAlexey.text = name
        myName.text = dataDay
        myFotosImageView.image = image
    }
}
