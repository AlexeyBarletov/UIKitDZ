// TwoViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Абстракный протокол
protocol AbstractionAnimal {
    /// функция для издавания звука
    func makeSound()
}

final class TwoViewController: UIViewController {
    
    // MARK: Private Property
    
    private let cat = Cat()
    private let dog = Dog()
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let animalCat = Animal(name: "Cat", linkProtocolAnimal: cat)
        let animalDog = Animal(name: "Dog", linkProtocolAnimal: dog)
        animalCat.makeSound() // Выведет "Meow"
        animalDog.makeSound() // Выведет "Woof"
    }
}

final class Dog: AbstractionAnimal {
    func makeSound() {
        print("Woolf")
    }
}

final class Cat: AbstractionAnimal {
    func makeSound() {
        print("Meow")
    }
}

final class Animal {
    let name: String
    var linkProtocolAnimal: AbstractionAnimal
    
    // MARK: Initializer
    
    init(name: String, linkProtocolAnimal: AbstractionAnimal) {
        self.name = name
        self.linkProtocolAnimal = linkProtocolAnimal
    }
    
    func makeSound() {
        linkProtocolAnimal.makeSound()
    }
}



// Нарушает принцип открытости закрытости, используем асбтракцию и выносим отдельных животных в разные классы при этом
// не трогая главный класс Animal тойсть расширяем его возможности
