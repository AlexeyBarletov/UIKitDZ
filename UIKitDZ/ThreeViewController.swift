//
//  ThreeViewController.swift
//  UIKitDZ
//
//  Created by Алексей Барлетов on 26.03.2024.
//

import UIKit

final class ThreeViewController: UIViewController {
    
    // MARK: Private Property
    
    private let examplePrinterRectangle = PrinterRectangle()
    private let examplePrinterCircel = PrinterCircel()
    private let circle = Circle(radius: 456)
    private let rectangle = Rectangle(width: 23, height: 34)
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        examplePrinterCircel.printSize(of: circle)
        examplePrinterRectangle.printSize(of: rectangle)
    }
}

/// Структура Круг
struct Circle {
    /// радиус
    let radius: CGFloat
}

/// Прямоугольник
struct Rectangle {
    /// Ширина
    let width: CGFloat
    /// Высота
    var height: CGFloat
}

final class PrinterRectangle {
    
    func printSize(of rect: Rectangle) {
        print(CGSize(width: rect.width, height: rect.height))
    }
}

final class PrinterCircel {
    func printSize(of circle: Circle) {
        let diameter = circle.radius * 2
        print(CGSize(width: diameter, height: diameter))
    }
}

// Данный принцип, это принци окрытости - закрытости
// помогает исключить такую проблему. Согласно ему модули должны быть открыты для расширения, но закрыты для изменения
// По этому мы используем структуры вместо абстракции и создаем два отдельных класса и выносим туда функции для печати размеров Circle and Rectangle
