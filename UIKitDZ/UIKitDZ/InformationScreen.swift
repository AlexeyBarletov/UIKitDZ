// InformationScreen.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

protocol DataDelegate: AnyObject {
    func tranlition(name: String, dataDay: String, image: UIImage)
}

/// класс
final class InformationScreen: UIViewController {
    var copyImageView = UIImageView()
    var copyImage = UIImage(named: "my")
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
    var dataDelegate: DataDelegate?
    var pikerViewBrithday = UIDatePicker()
    var pikerViewAge = UIPickerView()
    var pikerViewGender = UIPickerView()
    var genders = ["Male", "Female"]

    // MARK: Life Cycle

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
        setupPikerView()
        setupPikerViewGender()
        settupPikerViewAge()
        setupCopyTextFieldTelegram()
    }

    // MARK: Private Methods

    private func setupImageView() {
        copyImageView = UIImageView(frame: CGRect(x: 125, y: 66, width: 125, height: 125))
        copyImageView.image = copyImage
        view.addSubview(copyImageView)
    }

    // MARK: Private Methods

    private func setupLabelNameFoto() {
        copyLabel = UILabel(frame: CGRect(x: 125, y: 199, width: 125, height: 20))
        copyLabel.text = "Change photo"
        copyLabel.textColor = UIColor(red: 0 / 122, green: 122 / 255, blue: 255 / 255, alpha: 1)
        if let customFont = UIFont(name: nameFont, size: 16) {
            copyLabel.font = customFont
            view.addSubview(copyLabel)
        }
    }

    // MARK: Private Methods

    private func setupLabel() {
        copyLabelName = UILabel(frame: CGRect(x: 20, y: 239, width: 175, height: 19))
        copyLabelName.text = "Name Surname"
        copyLabelName.shadowColor = .black
        copyLabelName.shadowOffset = CGSize(width: 1, height: 1)
        if let customFont = UIFont(name: nameFont, size: 16) {
            copyLabelName.font = customFont
        }
        view.addSubview(copyLabelName)

        copyLabelBrithday = UILabel(frame: CGRect(x: 20, y: 314, width: 175, height: 19))
        copyLabelBrithday.text = "Brithday"
        copyLabelBrithday.shadowColor = .black
        copyLabelBrithday.shadowOffset = CGSize(width: 1, height: 1)
        if let customFont = UIFont(name: nameFont, size: 16) {
            copyLabelBrithday.font = customFont
        }
        view.addSubview(copyLabelBrithday)

        copyLabelAge = UILabel(frame: CGRect(x: 20, y: 389, width: 175, height: 19))
        copyLabelAge.text = "Age"
        copyLabelAge.shadowColor = .black
        copyLabelAge.shadowOffset = CGSize(width: 1, height: 1)
        if let customFont = UIFont(name: nameFont, size: 16) {
            copyLabelAge.font = customFont
        }
        view.addSubview(copyLabelAge)

        copyLabelGender = UILabel(frame: CGRect(x: 20, y: 462, width: 175, height: 19))
        copyLabelGender.text = "Gender"
        copyLabelGender.shadowColor = .black
        copyLabelGender.shadowOffset = CGSize(width: 1, height: 1)
        if let customFont = UIFont(name: nameFont, size: 16) {
            copyLabelGender.font = customFont
        }
        view.addSubview(copyLabelGender)

        copylabelTelegramm = UILabel(frame: CGRect(x: 20, y: 537, width: 175, height: 19))
        copylabelTelegramm.text = "Telegramm"
        copylabelTelegramm.shadowColor = .black
        copylabelTelegramm.shadowOffset = CGSize(width: 1, height: 1)
        if let customFont = UIFont(name: nameFont, size: 16) {
            copylabelTelegramm.font = customFont
        }
        view.addSubview(copylabelTelegramm)
    }

    // MARK: Private Methods

    private func setupTextField() {
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
    }

    // MARK: Private Methods

    private func setupCopyTextFieldTelegram() {
        copyTextFieldTelegram = UITextField(frame: CGRect(x: 20, y: 566, width: 250, height: 17))
        copyTextFieldTelegram.placeholder = "Typing Telegram"
        copyTextFieldTelegram.delegate = self
        view.addSubview(copyTextFieldTelegram)
    }

    // MARK: Private Methods

    private func setupView() {
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

    // MARK: Private Methods

    private func setupButton() {
        buttonAdd = UIButton(frame: CGRect(x: 325, y: 15, width: 30, height: 20))
        buttonAdd.setImage(UIImage(named: "add"), for: .normal)
        buttonAdd.imageView?.contentMode = .scaleAspectFit
        buttonAdd.addTarget(self, action: #selector(transferInfo), for: .touchUpInside)
        view.addSubview(buttonAdd)

        buttonCancel = UIButton(frame: CGRect(x: 15, y: 20, width: 50, height: 20))
        buttonCancel.setImage(UIImage(named: "cancel"), for: .normal)
        buttonCancel.imageView?.contentMode = .scaleAspectFit
        view.addSubview(buttonCancel)
    }

    // MARK: Private Methods

    @objc private func transferInfo() {
        dataDelegate?.tranlition(
            name: copyTextFieldBrithday.text ?? "",
            dataDay: copyTextFieldName.text ?? "", image: copyImageView.image ?? UIImage()
        )
        dismiss(animated: true, completion: nil)
    }

    // MARK: Private Methods

    private func setupPikerView() {
        pikerViewBrithday = UIDatePicker(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        pikerViewBrithday.preferredDatePickerStyle = .wheels
        pikerViewBrithday.datePickerMode = .date
        copyTextFieldBrithday.inputView = pikerViewBrithday

        let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 44))
        let tabBarItemOne = UIBarButtonItem(
            title: "сохранить",
            style: .done,
            target: nil,
            action: #selector(textFieldSetting)
        )

        let tabBarItemSisytem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        toolBar.setItems([tabBarItemOne, tabBarItemSisytem], animated: true)

        copyTextFieldBrithday.inputAccessoryView = toolBar
        copyTextFieldBrithday.delegate = self
    }

    // MARK: Private Methods

    @objc private func textFieldSetting() {
        copyTextFieldBrithday.resignFirstResponder()
    }

    // MARK: Private Methods

    private func settupPikerViewAge() {
        pikerViewAge = UIPickerView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        pikerViewAge.center = view.center
        pikerViewAge.delegate = self
        pikerViewAge.dataSource = self
        copyTextFieldAge.inputView = pikerViewAge
        pikerViewAge.tag = 0

        let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 44))
        let tabBarItemOne = UIBarButtonItem(
            title: "сохранить",
            style: .done,
            target: nil,
            action: #selector(textFieldAge)
        )
        let tabBarItemSisytem = UIBarButtonItem(
            barButtonSystemItem: .flexibleSpace,
            target: nil,
            action: nil
        )
        toolBar.setItems([tabBarItemOne, tabBarItemSisytem], animated: true)

        copyTextFieldAge.inputAccessoryView = toolBar
        copyTextFieldAge.delegate = self
    }

    // MARK: Private Methods

    @objc private func textFieldAge() {
        copyTextFieldAge.resignFirstResponder()
    }

    // MARK: Private Methods

    private func setupPikerViewGender() {
        pikerViewGender = UIPickerView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        pikerViewGender.center = view.center
        pikerViewGender.delegate = self
        pikerViewGender.dataSource = self
        copyTextFieldGender.inputView = pikerViewGender
        pikerViewGender.tag = 1

        let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 44))
        let tabBarItemOne = UIBarButtonItem(
            title: "сохранить",
            style: .done,
            target: nil,
            action: #selector(setupTextFieldGender)
        )

        let tabBarItemSisytem = UIBarButtonItem(
            barButtonSystemItem: .flexibleSpace,
            target: nil,
            action: nil
        )
        toolBar.setItems([tabBarItemOne, tabBarItemSisytem], animated: true)

        copyTextFieldGender.inputAccessoryView = toolBar
        copyTextFieldGender.delegate = self
    }

    @objc private func setupTextFieldGender() {
        copyTextFieldGender.resignFirstResponder()
    }
}

/// расширение для настрйоки методов, протоколов UIPickerViewDataSource,UIPickerViewDelegate
extension InformationScreen: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView.tag {
        case 0:
            return 50
        case 1:
            return genders.count
        default:
            return 1
        }
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pikerViewAge.tag {
        case 0:
            return "\(row)"
        default:
            break
        }
        return ""
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch pickerView.tag {
        case 0:
            copyTextFieldAge.text = "\(row)"
        case 1:
            copyTextFieldGender.text = genders[row]
        default:
            return
        }
    }
}

/// расширение для настройки DateFormatter и AlertController
extension InformationScreen: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == copyTextFieldBrithday {
            let dateFormater = DateFormatter()
            dateFormater.dateFormat = "dd.MM.yyyy"
            textField.text = dateFormater.string(from: pikerViewBrithday.date)
        }
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == copyTextFieldTelegram {
            let alertController = UIAlertController(
                title: "Please enter Telegram",
                message: nil,
                preferredStyle: .alert
            )
            let actionCancel = UIAlertAction(title: "Cancel", style: .cancel)
            let actionOk = UIAlertAction(title: "OK", style: .default)
            alertController.addAction(actionCancel)
            alertController.addAction(actionOk)
            alertController.addTextField { textField in
                textField.placeholder = "Typing Telegram"
            }
            present(alertController, animated: true)
        }
    }
}
