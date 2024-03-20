// Fourth ViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Задача с созданием своей очереди
class FourthViewController: UIViewController {
    // MARK: Private Property

    private var name = "Введите имя"
    private let lockQueue = DispatchQueue(label: "name.lock.queue")

    // MARK: Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        updateName()
    }

    // Функция updateName  обновляет значение переменной name на фоновом потоке, что может привести к выводу
    // устаревшего значения name

    //    func updateName() {
    //        DispatchQueue.global().async {
    //            self.name = "I love RM" // Перезаписываем в другом потоке
    //            print(Thread.current)
    //            print(self.name)
    //        }
    //        print(Thread.current)
    //        print(name) // Считываем имя из main
    //    }

    // Функция updateName блокирует главный поток  что может вызвать задержку перед выводом значения name после
    // обновления.
    //    func updateName() {
    //        DispatchQueue.global().sync {
    //            self.name = "I love RM" // Перезаписываем в другом потоке
    //            print(Thread.current)
    //            print(self.name)
    //        }
    //        print(Thread.current)
    //        print(name) // Считываем имя из main
    //    }
    //
    func updateName() {
        DispatchQueue.global().async {
            self.lockQueue.async {
                self.name = "I love RM"
                print(Thread.current)
                print(self.name)
            }
        }
        lockQueue.async {
            print(Thread.current)
            print(self.name) // из main
        }
    }
}
