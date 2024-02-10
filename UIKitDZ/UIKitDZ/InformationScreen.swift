// InformationScreen.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

class InformationScreen: UIViewController {
    var copyImageView = UIImageView()
    var copyImage = UIImage(named: "ellipse")
    var copyLabel = UILabel()
    let nameFont = "Verdana"
    var copyLabelName = UILabel()
    var copyLabelBrithday = UILabel()
    var copyLabelAge = UILabel()
    var copyLabelGender = UILabel()
    var copylabelTelegramm = UILabel()

    var copyTextFieldName = UITextField()
    var copyTextFieldBrithday = UITextField()
    var copyTextFieldAge = UITextField()
    var copyTextFieldGender = UITextField()
    var copyTextFieldTelegram = UITextField()

    var copyViewName = UIView()
    var copyViewBrithday = UIView()
    var copyViewAge = UIView()
    var copyViewGender = UIView()
    var copyViewTelegram = UIView()

    var buttonCancel = UIButton(type: .custom)
    var buttonAdd = UIButton(type: .custom)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupImageView()
        setupLabelNameFoto()
        setupLabel()
        setupTextField()
        setupView()
        setupView()
        setupButton()
    }

    func setupImageView() {
        copyImageView = UIImageView(frame: CGRect(x: 125, y: 66, width: 125, height: 125))
        copyImageView.image = copyImage
        view.addSubview(copyImageView)
    }

    func setupLabelNameFoto() {
        copyLabel = UILabel(frame: CGRect(x: 125, y: 199, width: 125, height: 20))
        copyLabel.text = "Change photo"
        copyLabel.textColor = UIColor(red: 0 / 122, green: 122 / 255, blue: 255 / 255, alpha: 1)
        if let customFont = UIFont(name: nameFont, size: 16) {
            copyLabel.font = customFont
            view.addSubview(copyLabel)
        }
    }

    func setupLabel() {
        copyLabelName = UILabel(frame: CGRect(x: 20, y: 239, width: 175, height: 19))
        copyLabelName.text = "Name Surname"
        copyLabelName.shadowColor = .black
        copyLabelName.shadowOffset = CGSize(width: 1, height: 1)
        if let customFont = UIFont(name: nameFont, size: 16) {
            copyLabelName.font = customFont
            view.addSubview(copyLabelName)

            copyLabelBrithday = UILabel(frame: CGRect(x: 20, y: 314, width: 175, height: 19))
            copyLabelBrithday.text = "Brithday"
            copyLabelBrithday.shadowColor = .black
            copyLabelBrithday.shadowOffset = CGSize(width: 1, height: 1)
            if let customFont = UIFont(name: nameFont, size: 16) {
                copyLabelBrithday.font = customFont
                view.addSubview(copyLabelBrithday)

                copyLabelAge = UILabel(frame: CGRect(x: 20, y: 389, width: 175, height: 19))
                copyLabelAge.text = "Age"
                copyLabelAge.shadowColor = .black
                copyLabelAge.shadowOffset = CGSize(width: 1, height: 1)
                if let customFont = UIFont(name: nameFont, size: 16) {
                    copyLabelAge.font = customFont
                    view.addSubview(copyLabelAge)

                    copyLabelGender = UILabel(frame: CGRect(x: 20, y: 462, width: 175, height: 19))
                    copyLabelGender.text = "Gender"
                    copyLabelGender.shadowColor = .black
                    copyLabelGender.shadowOffset = CGSize(width: 1, height: 1)
                    if let customFont = UIFont(name: nameFont, size: 16) {
                        copyLabelGender.font = customFont
                        view.addSubview(copyLabelGender)

                        copylabelTelegramm = UILabel(frame: CGRect(x: 20, y: 537, width: 175, height: 19))
                        copylabelTelegramm.text = "Telegramm"
                        copylabelTelegramm.shadowColor = .black
                        copylabelTelegramm.shadowOffset = CGSize(width: 1, height: 1)
                        if let customFont = UIFont(name: nameFont, size: 16) {
                            copylabelTelegramm.font = customFont
                            view.addSubview(copylabelTelegramm)
                        }
                    }
                }
            }
        }
    }

    func setupTextField() {
        copyTextFieldName = UITextField(frame: CGRect(x: 20, y: 268, width: 250, height: 17))
        copyTextFieldName.placeholder = "Typing Name Surname"
        view.addSubview(copyTextFieldName)

        copyTextFieldBrithday = UITextField(frame: CGRect(x: 20, y: 343, width: 250, height: 17))
        copyTextFieldBrithday.placeholder = "Typing Date of Birth"
        view.addSubview(copyTextFieldBrithday)

        copyTextFieldAge = UITextField(frame: CGRect(x: 20, y: 418, width: 250, height: 17))
        copyTextFieldAge.placeholder = "Typing Age"
        view.addSubview(copyTextFieldAge)

        copyTextFieldGender = UITextField(frame: CGRect(x: 20, y: 491, width: 250, height: 17))
        copyTextFieldGender.placeholder = "Indicate Gender"
        view.addSubview(copyTextFieldGender)

        copyTextFieldTelegram = UITextField(frame: CGRect(x: 20, y: 566, width: 250, height: 17))
        copyTextFieldTelegram.placeholder = "Typing Telegram"
        view.addSubview(copyTextFieldTelegram)
    }

    func setupView() {
        copyViewName = UIView(frame: CGRect(x: 20, y: 293, width: 335, height: 1))
        copyViewName.backgroundColor = UIColor(red: 208 / 255, green: 214 / 255, blue: 220 / 255, alpha: 1)
        view.addSubview(copyViewName)

        copyViewBrithday = UIView(frame: CGRect(x: 20, y: 368, width: 335, height: 1))
        copyViewBrithday.backgroundColor = UIColor(red: 208 / 255, green: 214 / 255, blue: 220 / 255, alpha: 1)
        view.addSubview(copyViewBrithday)

        copyViewAge = UIView(frame: CGRect(x: 20, y: 443, width: 335, height: 1))
        copyViewAge.backgroundColor = UIColor(red: 208 / 255, green: 214 / 255, blue: 220 / 255, alpha: 1)
        view.addSubview(copyViewAge)

        copyViewGender = UIView(frame: CGRect(x: 20, y: 516, width: 335, height: 1))
        copyViewGender.backgroundColor = UIColor(red: 208 / 255, green: 214 / 255, blue: 220 / 255, alpha: 1)
        view.addSubview(copyViewGender)

        copyViewTelegram = UIView(frame: CGRect(x: 20, y: 591, width: 335, height: 1))
        copyViewTelegram.backgroundColor = UIColor(red: 208 / 255, green: 214 / 255, blue: 220 / 255, alpha: 1)
        view.addSubview(copyViewTelegram)
    }

    func setupButton() {
        buttonAdd = UIButton(frame: CGRect(x: 325, y: 15, width: 30, height: 20))
        buttonAdd.setImage(UIImage(named: "add"), for: .normal)
        buttonAdd.imageView?.contentMode = .scaleAspectFit
        view.addSubview(buttonAdd)

        buttonCancel = UIButton(frame: CGRect(x: 15, y: 20, width: 50, height: 20))
        buttonCancel.setImage(UIImage(named: "cancel"), for: .normal)
        buttonCancel.imageView?.contentMode = .scaleAspectFit
        view.addSubview(buttonCancel)
    }
}
