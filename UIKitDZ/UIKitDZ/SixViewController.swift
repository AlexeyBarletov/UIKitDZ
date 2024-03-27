//
//  SixViewController.swift
//  UIKitDZ
//
//  Created by Алексей Барлетов on 26.03.2024.
//

import UIKit

class SixViewController: UIViewController {
    
// MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

///Действия с лампочкой
protocol ActionLamp {
    ///включить
    func turnOn()
    ///выключить
    func turnOff()
}

final class LightBulb: ActionLamp {
    func turnOn() {
    print("lamp on")
    }

    func turnOff() {
        print("lamp on")
    }
}

final class Switch {
    let bulb: ActionLamp

    init(bulb: ActionLamp) {
        self.bulb = bulb
    }

    func toggle() {
        bulb.turnOn()
    }
}
//Принцип инверсии зависимостей (Dependency Inversion Principle).
// Мы вынесли методы в абстракцию и подписали на нее  модуль верхнего уровня
//а в модуле нижнего уровня сделали ссылку на эту абстракцию тем самым лишив ее зависимости от модуля верхнего уровня
