// ViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

class ViewController: UIViewController {
    var exampleAlertController = UIAlertController()
    var exampleAlertControllerTwo = UIAlertController()
    var exampleAlertControllerThree = UIAlertController()
    var exampleAlertControllerFour = UIAlertController()
    var exampleAlertControllerFive = UIAlertController()
    var exampleAlertControllerSix = UIAlertController()
    var exampleUIimageView = UIImageView()
    var exampleUIImage = UIImage(named: "background")
    var examplelButton = UIButton()
    var exampleButtonTwo = UIButton()
    var exampleLabel = UILabel()
    var exampleView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUIimageView()
        setupUIButton()
        setupLabel()
        setupView()
        setupAlertControllerThree()
        setupUIButtonTwo()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupAlertController()
    }

    func setupView() {
        exampleView = UIView(frame: CGRect(x: 0, y: 37, width: 375, height: 82))
        exampleView.backgroundColor = UIColor(red: 151 / 255, green: 203 / 255, blue: 229 / 255, alpha: 1)
        view.addSubview(exampleView)
        view.addSubview(exampleLabel)
    }

    func setupLabel() {
        exampleLabel = UILabel(frame: CGRect(x: 50, y: 35, width: 275, height: 90))
        exampleLabel.text = "Приветсвую, "
        exampleLabel.textColor = .white
        exampleLabel.font = UIFont.systemFont(ofSize: 30)
        exampleLabel.textAlignment = .center
        exampleLabel.numberOfLines = 0
        exampleLabel.lineBreakMode = .byWordWrapping
        view.addSubview(exampleLabel)
    }

    func setupAlertController() {
        exampleAlertController = UIAlertController(
            title: "Пожалуйста,   представьтесь",
            message: nil,
            preferredStyle: .alert
        )
        let action = UIAlertAction(title: "Готово", style: .default) { _ in
            let text = self.exampleAlertController.textFields?.first
            self.exampleLabel.text! += (text?.text)!
        }
        exampleAlertController.addAction(action)
        exampleAlertController.addTextField { textField in
            textField.placeholder = "введите ваше имя"
        }

        present(exampleAlertController, animated: true, completion: nil)
    }

    func setupUIimageView() {
        exampleUIimageView = UIImageView(frame: CGRect(x: 0, y: 39, width: view.frame.width, height: 900))
        exampleUIimageView.image = exampleUIImage
        view.addSubview(exampleUIimageView)
    }

    func setupUIButton() {
        examplelButton = UIButton(frame: CGRect(x: 85, y: 301, width: 150, height: 150))
        examplelButton.setTitle("Угадай число", for: .normal)
        examplelButton.backgroundColor = UIColor(red: 155 / 255, green: 127 / 255, blue: 181 / 255, alpha: 1)
        examplelButton.setTitleColor(.white, for: .normal)
        examplelButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        examplelButton.layer.cornerRadius = 20
        examplelButton.layer.borderColor = CGColor(red: 70 / 255, green: 0 / 255, blue: 70 / 255, alpha: 1)
        examplelButton.layer.borderWidth = 3
        examplelButton.addTarget(self, action: #selector(setupAlertControllerFour), for: .touchUpInside)
        view.addSubview(examplelButton)
    }

    func setupUIButtonTwo() {
        exampleButtonTwo = UIButton(frame: CGRect(x: 152, y: 507, width: 200, height: 200))
        exampleButtonTwo.setTitle("Калькулятор", for: .normal)
        exampleButtonTwo.backgroundColor = UIColor(red: 100 / 255, green: 181 / 255, blue: 130 / 255, alpha: 1)
        exampleButtonTwo.setTitleColor(.white, for: .normal)
        exampleButtonTwo.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        exampleButtonTwo.layer.cornerRadius = 20
        exampleButtonTwo.layer.borderColor = CGColor(red: 40 / 255, green: 121 / 255, blue: 70 / 255, alpha: 1)
        exampleButtonTwo.layer.borderWidth = 3
        exampleButtonTwo.addTarget(self, action: #selector(setupAlertControllTwo), for: .touchUpInside)
        view.addSubview(exampleButtonTwo)
    }

    @objc func setupAlertControllTwo() {
        exampleAlertControllerTwo = UIAlertController(
            title: "Введите Ваши числа",
            message: nil,
            preferredStyle: .alert
        )
        let actionTwo = UIAlertAction(title: "Отмена", style: .cancel)
        let actionOne = UIAlertAction(title: "Сложить", style: .default, handler: { _ in
            guard
                let oneNumber = self.exampleAlertControllerTwo.textFields?[0].text,
                let twoNumber = self.exampleAlertControllerTwo.textFields?[1].text,
                let oneInt = Int(oneNumber),
                let twoInt = Int(twoNumber)
            else { return }
            let result = oneInt + twoInt
            let sum = String(result)

            self.exampleAlertControllerThree.message = sum
            self.present(self.exampleAlertControllerThree, animated: true, completion: nil)
        })
        exampleAlertControllerTwo.addAction(actionTwo)
        exampleAlertControllerTwo.addAction(actionOne)
        exampleAlertControllerTwo.addTextField { textField in
            textField.placeholder = "Введите число один"
        }
        exampleAlertControllerTwo.addTextField { textField in
            textField.placeholder = "Введите число два"
        }
        present(exampleAlertControllerTwo, animated: true, completion: nil)
    }

    func setupAlertControllerThree() {
        exampleAlertControllerThree = UIAlertController(
            title: "Ваша сумма",
            message: nil,
            preferredStyle: .alert
        )
        let action = UIAlertAction(title: "Ok", style: .default)
        let actionTwo = UIAlertAction(title: "Отмена", style: .cancel)
        exampleAlertControllerThree.addAction(action)
        exampleAlertControllerThree.addAction(actionTwo)
    }

    @objc func setupAlertControllerFour() {
        exampleAlertControllerFour = UIAlertController(
            title: "Угадай число от 1 до 10",
            message: nil,
            preferredStyle: .alert
        )

        let action = UIAlertAction(title: "Ok", style: .default) { _ in
            if let randomText = self.exampleAlertControllerFour.textFields?.first?.text,
               let random = Int(randomText),
               random == Int.random(in: 1 ... 10)
            { self.setupAlertControllerFive()
            } else {
                self.setupAlertControllerSix()
            }
        }

        let actionTwo = UIAlertAction(title: "Отмена", style: .cancel)
        exampleAlertControllerFour.addAction(action)
        exampleAlertControllerFour.addAction(actionTwo)
        exampleAlertControllerFour.addTextField { textField in
            textField.placeholder = "Введите число"
            self.present(self.exampleAlertControllerFour, animated: true)
        }
    }

    func setupAlertControllerFive() {
        exampleAlertControllerFive = UIAlertController(
            title: "Поздравляю",
            message: "Вы угадали",
            preferredStyle: .alert
        )
        let action = UIAlertAction(title: "Ok", style: .default)
        let actionTwo = UIAlertAction(title: "Отмена", style: .default)
        exampleAlertControllerFive.addAction(action)
        exampleAlertControllerFive.addAction(actionTwo)
        present(exampleAlertControllerFive, animated: true)
    }

    func setupAlertControllerSix() {
        exampleAlertControllerSix = UIAlertController(
            title: "Упс",
            message: "Это не верный ответ",
            preferredStyle: .alert
        )
        let action = UIAlertAction(title: "Ok", style: .default)
        exampleAlertControllerSix.addAction(action)
        present(exampleAlertControllerSix, animated: true)
    }
}
