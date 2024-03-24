// ViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Сперва 1
        // потом 3
        // Потом 2   (на главной очереди)
//        print(1)
//        DispatchQueue.main.async  {
//            print(2)
//        }
//        print(3)
//
        print(1)
        Task {
            print(2)
        }
        print(3)
        // Заменили DispatchQueue.main.async на Task
        // Вывод остался прежним
        // Задача создается, но не запускается явно, и будет выполнена автоматически позже, когда будут выполнены все
        // зависимости.
    }
}
