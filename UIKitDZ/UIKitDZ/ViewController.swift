// ViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

final class ViewController: UIViewController {
    
    // MARK: Private Property
    
   private let copyUpDate = UpdateUI()

    // MARK: Life Cycle
    
    override func viewDidLoad() {
        let url =
        URL(
            string: "https://img.freepik.com/free-photo/bright-petals-gift-love-in-a-bouquet-generated-by-ai_188544-13370.jpg?size=626&ext=jpg&ga=GA1.1.34264412.1711324800&semt=ais"
        )
        super.viewDidLoad()
        view.backgroundColor = .white
        copyUpDate.copyNetworkManager.fetchData(url: url!)
        copyUpDate.updateUI()
    }
}

final class NetworkManager {
    func fetchData(url: URL) {
        // Запрос к API
    }
}

final class UpdateUI {
    var copyNetworkManager = NetworkManager()
    func updateUI() {}
    // обновляет пользовательский интерфейс
}

// Нарушает принцип единственной отвественности, потому что в классе NetworkManager есть два метода которые можно
// изменить, берем и выносим метод updateUI() в другой класс чтобы разделить логику
