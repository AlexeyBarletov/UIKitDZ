// ThreeViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

class ThreeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }

    // MARK: IBAction

    @IBAction func setupActionButton(_ sender: Any) {
        let alertActionController = UIAlertController(
            title: "Вы хотите оплатить чек",
            message: nil,
            preferredStyle: .alert
        )
        let action = UIAlertAction(title: "Отмена", style: .cancel)
        let actionTwo = UIAlertAction(title: "да", style: .default) { _ in
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let fourViewController = storyboard
                .instantiateViewController(withIdentifier: "fourViewController")
            self.navigationController?.pushViewController(fourViewController, animated: true)
        }
        alertActionController.addAction(action)
        alertActionController.addAction(actionTwo)
        present(alertActionController, animated: true)
    }
}
