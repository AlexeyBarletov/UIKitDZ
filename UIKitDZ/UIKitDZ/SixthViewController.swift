//
//  SixthViewController.swift
//  UIKitDZ
//
//  Created by Алексей Барлетов on 23.03.2024.
//

import UIKit
/// Задача Удалять последний Workitem что б в массив попали все элементы с 1...9 кроме 10го
class SixthViewController: UIViewController {
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let service = ArrayAdditionService()
        for i in 1...10 {
            service.addElement(i)
        }
        service.cancelAddition()
    }
    
    // Класс, представляющий сервис операций добавления в массив
    class ArrayAdditionService {
        private var array = [Int]()
        private var pendingWorkItems = [DispatchWorkItem]()
        
        // Метод для добавления элемента в массив
        func addElement(_ element: Int) {
            // Создаем новую операцию для добавления элемента в массив
            let newWorkItem = DispatchWorkItem { [weak self] in
                self?.array.append(element)
                print("Элемент \(element) успешно добавлен в массив.")
            }
            
            // Сохраняем новую операцию
            pendingWorkItems.append(newWorkItem)
            
            // Даем пользователю время для отмены операции
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                if newWorkItem.isCancelled == false {
                    print("Выполнение операции \(element)")
                }
            }
        }
        
        // Метод для отмены операции добавления элемента в массив
        func cancelAddition() {
            guard let lastWorkItem = pendingWorkItems.last else {
                print("Нет операций для отмены.")
                return
            }
            
            lastWorkItem.cancel()
        }
    }
}

