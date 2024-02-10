// ViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

final class ViewController: UIViewController {
    var exampleButton = UIButton()
    var copyLabel = UILabel()
    var copyLabelTwo = UILabel()
    var copyLabelThree = UILabel()
    var copyLabelFour = UILabel()

    // MARK: Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupButton()
    }

    // MARK: Method Private

    private func setupButton() {
        exampleButton = UIButton(frame: CGRect(x: 0, y: 0, width: 355, height: 44))
        exampleButton.center = view.center
        exampleButton.layer.cornerRadius = 12
        exampleButton.backgroundColor = UIColor(red: 76 / 255, green: 216 / 255, blue: 102 / 255, alpha: 1)
        exampleButton.setTitle("Начать", for: .normal)
        exampleButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        exampleButton.addTarget(self, action: #selector(setupAlertController), for: .touchUpInside)
        view.addSubview(exampleButton)
    }

    // MARK: Method Private

    @objc private func setupAlertController() {
        let alertController = UIAlertController(title: "Введите ваше слово", message: nil, preferredStyle: .alert)
        let action = UIAlertAction(title: "Отмена", style: .cancel)
        let actionTwo = UIAlertAction(title: "Ok", style: .default, handler: { _ in
            guard let textField = alertController.textFields?.first else { return }
            guard let text = textField.text else { return }
            self.setupLabel()
            self.copyLabelThree.text = text
            self.copyLabelFour.text = String(text.reversed())

        })
        alertController.addAction(actionTwo)
        alertController.addAction(action)

        alertController.addTextField { textField in
            textField.placeholder = "Введите ваше слово"
        }

        present(alertController, animated: true)
    }

    // MARK: Method Private

    private func setupLabel() {
        copyLabel = UILabel(frame: CGRect(x: 50, y: 106, width: 275, height: 57))
        copyLabel.text = "Вы ввели слово"
        copyLabel.font = .boldSystemFont(ofSize: 16)
        copyLabel.textColor = UIColor(red: 17 / 255, green: 17 / 255, blue: 17 / 255, alpha: 1)
        copyLabel.textAlignment = .center
        view.addSubview(copyLabel)

        copyLabelTwo = UILabel(frame: CGRect(x: 50, y: 225, width: 275, height: 114))
        copyLabelTwo.text = "А вот что получится, если\nчитать справа налево"
        copyLabelTwo.numberOfLines = 0
        copyLabelTwo.font = .boldSystemFont(ofSize: 16)
        copyLabelTwo.textColor = UIColor(red: 17 / 255, green: 17 / 255, blue: 17 / 255, alpha: 1)
        copyLabelTwo.textAlignment = .center
        view.addSubview(copyLabelTwo)

        copyLabelThree = UILabel(frame: CGRect(x: 50, y: 157, width: 275, height: 57))
        copyLabelThree.text = ""
        copyLabelThree.font = .boldSystemFont(ofSize: 16)
        copyLabelThree.textColor = UIColor(red: 0 / 255, green: 0 / 255, blue: 0 / 255, alpha: 0.2)
        copyLabelThree.textAlignment = .center
        view.addSubview(copyLabelThree)

        copyLabelFour = UILabel(frame: CGRect(x: 50, y: 295, width: 275, height: 57))
        copyLabelFour.text = ""
        copyLabelFour.font = .boldSystemFont(ofSize: 16)
        copyLabelFour.textColor = UIColor(red: 0 / 255, green: 0 / 255, blue: 0 / 255, alpha: 0.2)
        copyLabelFour.textAlignment = .center
        view.addSubview(copyLabelFour)
    }
}
