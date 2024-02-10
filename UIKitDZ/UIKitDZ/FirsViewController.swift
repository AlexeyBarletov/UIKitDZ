// FirsViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

final class FirsViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }

    // MARK: IBAction

    @IBAction private func setupButton(_ sender: Any) {
        let alertController = UIAlertController(title: "Выставить Счет", message: nil, preferredStyle: .alert)
        let action = UIAlertAction(title: "Отмена", style: .cancel)
        let actionTwo = UIAlertAction(title: "Чек", style: .default) { _ in

            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let viewControllerThree = storyboard
                .instantiateViewController(withIdentifier: "myStroryboardIndentificator")

            self.navigationController?.pushViewController(viewControllerThree, animated: true)
        }
        alertController.addAction(action)
        alertController.addAction(actionTwo)
        present(alertController, animated: true)
    }
}
