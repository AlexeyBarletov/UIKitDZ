// Eighth ViewController.swift
// Copyright © RoadMap. All rights reserved.

//
//  Eighth ViewController.swift
//  UIKitDZ
//
//  Created by Алексей Барлетов on 20.03.2024.
import UIKit

class EighthViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        print(2)
        DispatchQueue.main.async {
            print(3)
            // DispatchQueue.main.sync {}
            DispatchQueue.main.async { // меняем sync на async чтобы вывести все цифры
                print(5)
            }
            print(4)
        }
        print(6)
    }
}

// Метод viewDidLoad вызывается при инициализации и создании экземпляра ViewController, так как это часть жизненного
// цикла ViewController
