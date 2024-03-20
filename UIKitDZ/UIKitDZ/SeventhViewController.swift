// SeventhViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

// Задача на решение проблемы с помощью NSLock
class SeventhViewController: UIViewController {
    // MARK: Private Property

    private lazy var name = "I love RM"
    private var lock = NSLock()

    // MARK: Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemOrange
        updateName()
    }

    func updateName() {
        DispatchQueue.global().async {
            self.lock.lock()
            print(self.name) // Считываем имя из global
            print(Thread.current)
            self.lock.unlock()
        }
        lock.lock()
        print(name) // Считываем имя из main
        lock.unlock()
    }
}
