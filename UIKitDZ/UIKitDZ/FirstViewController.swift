// FirstViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

final class FirstViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }

    // MARK: IBAction

    @IBAction private func setupButton(_ sender: Any) {
        let alertController = UIAlertController(title: "Выставить Счет", message: nil, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Отмена", style: .cancel)
        let yesAction = UIAlertAction(title: "Чек", style: .default) { _ in

            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let viewControllerThree = storyboard
                .instantiateViewController(withIdentifier: "myStroryboardIndentificator")

            self.navigationController?.pushViewController(viewControllerThree, animated: true)
        }
        alertController.addAction(cancelAction)
        alertController.addAction(yesAction)
        present(alertController, animated: true)
    }
}
