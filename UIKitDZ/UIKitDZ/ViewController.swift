// ViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

///  Задача номер 1 на перевод потоков
class ViewController: UIViewController {
    override func viewDidLoad() {
        // MARK: Life Cycle

        super.viewDidLoad()
        view.backgroundColor = .white

        Thread.detachNewThread {
            for _ in 0 ..< 10 {
                let currentThread = Thread.current
                print("1, Current thread: \(currentThread)")
            }
        }

        for _ in 0 ..< 10 {
            let currentThread = Thread.current
            print("2, Current thread: \(currentThread)")
        }
    }
}

// Только первый цикл перевести в другой поток с помощью Thread.detachNewThread и обяснить почему изменился вывод.
// Мы создали новый поток с помощью detachNewThread и теперь они отрабатываю параллельно
