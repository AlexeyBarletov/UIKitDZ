// Sixth ViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Задача на построение порядка в выводе
class SixthViewController: UIViewController {
    // MARK: Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        print("A")

        DispatchQueue.main.async {
            print("B")
        }

        print("C")
    }
}

// 1. "A"
// 2. "C"
// 3. "B"
// Поскольку код в блоке DispatchQueue.main.async добавляется в очередь main queue, который является серийной очередью,
// он будет выполнен после завершения предыдущего блока кода, который был добавлен с использованием sync.
