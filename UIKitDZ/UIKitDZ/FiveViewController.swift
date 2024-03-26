//
//  FiveViewController.swift
//  UIKitDZ
//
//  Created by Алексей Барлетов on 26.03.2024.
//

import UIKit

class FiveViewController: UIViewController {
    // MARK: Private Property
    
    private let human = Human()
    private let robot = Robot()
    
// MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        human.eat()
        human.work()
        robot.work()
    }
}

///Рабочий
protocol Worker {
    ///работает
    func work()
  
}
/// Энергия
protocol Energy {
    ///ест
    func eat()
}

final class Robot: Worker {
    func work() {
        print("robot - work")
    }
}

final class Human: Worker, Energy {
    func work() {
        print("Human - work")
    }
    
    func eat() {
        print("Human - eat")
    }
}
//Здесь используется Интерфейс-разделение (Interface Segregation Principle).
// Мы создали Отдельный протокол для eat()
//и создали новый класс Human, потому что класс не должен использовать методы которые ему не нужны(простым языком)
// А классу Robot не нужно использовать метод eat()


