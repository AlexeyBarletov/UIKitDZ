//
//  FourViewController.swift
//  UIKitDZ
//
//  Created by Алексей Барлетов on 26.03.2024.
//

import UIKit

class FourViewController: UIViewController {
    
    // MARK: Private Property
    
   private let myBird: Bird = Penguin()
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myBird.noFly()
    }
}

///Действие
protocol Action {
    ///лететь
    func fly()
}

class Bird {
    func noFly() {
        print("Penguin can't fly")
    }
}

final  class Mammals: Bird, Action {
    func fly() {}
}

final class Penguin: Bird {}

//Здесь используется, принцип подстановки Барбары Лисков (Liskov Substitution Principle)
//
