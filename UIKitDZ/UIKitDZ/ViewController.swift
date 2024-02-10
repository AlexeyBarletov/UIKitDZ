// ViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    var copyImageView = UIImageView()
    var copyLabel = UILabel()
    var copyLabelEmail = UILabel()
    var copyLabelSign = UILabel()
    let fontName = "Verdana"
    var copyImage = UIImage(named: "image")
    var textFieldEmail = UITextField()
    var copyLabelPassword = UILabel()
    var copyTextFieldPassword = UITextField()
    var copyViewlineTextField = UIView()
    var copyViewlineTextPassword = UIView()
    var copyButtonEveHide = UIButton()
    var copyButtonLogin = UIButton()

    // MARK: Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addViewDidLoad()
        textFieldEmail.delegate = self
        copyTextFieldPassword.delegate = self
    }

    // MARK: Method Private

    private func addViewDidLoad() {
        setupImageView()
        setupILabelView()
        setupTextFieldEmail()
        setupView()
        setupButton()
        setupTextFieldPassword()
    }

    // MARK: Method Private

    private func setupImageView() {
        copyImageView = UIImageView(frame: CGRect(x: 125, y: 70, width: 125, height: 125))
        copyImageView.image = copyImage
        view.addSubview(copyImageView)
    }

    // MARK: Method Private

    private func setupILabelView() {
        copyLabel = UILabel(frame: CGRect(x: 100, y: 200, width: 175, height: 44))
        copyLabel.textColor = UIColor(red: 90 / 255, green: 67 / 255, blue: 148 / 255, alpha: 1)
        copyLabel.shadowColor = copyLabel.textColor.withAlphaComponent(1)
        copyLabel.shadowOffset = CGSize(width: 1, height: 1)
        copyLabel.text = "Brihday \nReminder"
        copyLabel.numberOfLines = 0
        copyLabel.textAlignment = .center
        if let customFont = UIFont(name: fontName, size: 18) {
            copyLabel.font = customFont
            view.addSubview(copyLabel)

            copyLabelSign = UILabel(frame: CGRect(x: 20, y: 266, width: 175, height: 31))
            copyLabelSign.textColor = UIColor(red: 233 / 255, green: 70 / 255, blue: 94 / 255, alpha: 1)
            copyLabelSign.shadowColor = copyLabelSign.textColor.withAlphaComponent(1)
            copyLabelSign.shadowOffset = CGSize(width: 1, height: 1)
            copyLabelSign.text = "Sign In"
            if let customFontSignIn = UIFont(name: fontName, size: 26) {
                copyLabelSign.font = customFontSignIn
                view.addSubview(copyLabelSign)

                copyLabelEmail = UILabel(frame: CGRect(x: 20, y: 318, width: 175, height: 19))
                copyLabelEmail.textColor = UIColor(red: 233 / 255, green: 70 / 255, blue: 94 / 255, alpha: 1)
                copyLabelEmail.shadowColor = copyLabelSign.textColor.withAlphaComponent(1)
                copyLabelEmail.shadowOffset = CGSize(width: 1, height: 1)
                copyLabelEmail.text = "Email"
                if let customFontEmail = UIFont(name: fontName, size: 16) {
                    copyLabelEmail.font = customFontEmail
                    view.addSubview(copyLabelEmail)

                    copyLabelPassword = UILabel(frame: CGRect(x: 20, y: 393, width: 175, height: 19))
                    copyLabelPassword.textColor = UIColor(red: 233 / 255, green: 70 / 255, blue: 94 / 255, alpha: 1)
                    copyLabelPassword.shadowColor = copyLabelSign.textColor.withAlphaComponent(1)
                    copyLabelPassword.shadowOffset = CGSize(width: 1, height: 1)
                    copyLabelPassword.text = "Password"
                    if let customFontPassword = UIFont(name: fontName, size: 16) {
                        copyLabelPassword.font = customFontPassword
                        view.addSubview(copyLabelPassword)
                    }
                }
            }
        }
    }

    // MARK: Method Private

    private func setupView() {
        copyViewlineTextField = UIView(frame: CGRect(x: 20, y: 372, width: 335, height: 1))
        copyViewlineTextField.backgroundColor = UIColor(red: 208 / 255, green: 214 / 255, blue: 220 / 255, alpha: 1)
        view.addSubview(copyViewlineTextField)

        copyViewlineTextPassword = UIView(frame: CGRect(x: 20, y: 448, width: 335, height: 1))
        copyViewlineTextPassword.backgroundColor = UIColor(red: 208 / 255, green: 214 / 255, blue: 220 / 255, alpha: 1)
        view.addSubview(copyViewlineTextPassword)
    }

    // MARK: Method Private

    private func setupButton() {
        copyButtonEveHide = UIButton(frame: CGRect(x: 332, y: 419, width: 22, height: 19))
        copyButtonEveHide.setImage(UIImage(named: "vector"), for: .normal)
        copyButtonEveHide.addTarget(self, action: #selector(setupTextFieldIsHiddenPassword), for: .touchUpInside)
        view.addSubview(copyButtonEveHide)

        copyButtonLogin = UIButton(frame: CGRect(x: 20, y: 671, width: 335, height: 44))
        copyButtonLogin.backgroundColor = UIColor(red: 233 / 255, green: 70 / 255, blue: 94 / 255, alpha: 1)
        copyButtonLogin.isEnabled = false
        // copyButtonLogin.isHidden =
        copyButtonLogin.setTitle("Login", for: .normal)
        copyButtonLogin.layer.cornerRadius = 12
        view.addSubview(copyButtonLogin)
    }

    // MARK: Method Private

    @objc private func setupTextFieldIsHiddenPassword() {
        copyTextFieldPassword.isHidden = false
    }

    // MARK: Method Private

    private func setupTextFieldEmail() {
        textFieldEmail = UITextField(frame: CGRect(x: 20, y: 347, width: 175, height: 17))
        textFieldEmail.placeholder = "Typing email"
        textFieldEmail.font = UIFont.systemFont(ofSize: 16)

        view.addSubview(textFieldEmail)
    }

    // MARK: Method Private

    private func setupTextFieldPassword() {
        copyTextFieldPassword = UITextField(frame: CGRect(x: 20, y: 422, width: 129, height: 17))
        copyTextFieldPassword.placeholder = "Typing password"
        copyTextFieldPassword.isSecureTextEntry = true
        copyTextFieldPassword.font = UIFont.systemFont(ofSize: 16)
        view.addSubview(copyTextFieldPassword)
    }
}
