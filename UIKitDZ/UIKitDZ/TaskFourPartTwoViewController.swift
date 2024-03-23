//
//  TaskFourPartTwoViewController.swift
//  UIKitDZ
//
//  Created by Алексей Барлетов on 23.03.2024.
//

import UIKit

// Задача номер 4
final class TaskFourPartTwoViewController: UIViewController {
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        let threadSafeArray = ThreadSafeArray()
        let operationQueue = OperationQueue()
        
        let firstOperation = FirstOperation(threadSafeArray: threadSafeArray)
        let secondOperation = SecondOperation(threadSafeArray: threadSafeArray)
        
        operationQueue.addOperation(firstOperation)
        secondOperation.addDependency(firstOperation)
        operationQueue.addOperation(secondOperation)
        
        
        operationQueue.waitUntilAllOperationsAreFinished()
        print(threadSafeArray.getAll())
        
    }
}
// Объявляем класс для синхронизации потоков
class ThreadSafeArray {
    private var array: [String] = []
    
    func append(_ item: String) {
        array.append(item)
    }
    
    func getAll() -> [String] {
        return array
    }
}

//Определяем первую операцию для добавления строки в массив
class FirstOperation: Operation {
    let threadSafeArray: ThreadSafeArray
    
    init(threadSafeArray: ThreadSafeArray) {
        self.threadSafeArray = threadSafeArray
    }
    
    override func main() {
        if isCancelled { return }
        threadSafeArray.append("Первая Операция")
    }
}
//Определяем вторую операцию для добавления строки в массив

class SecondOperation: Operation {
    let threadSafeArray: ThreadSafeArray
    
    init(threadSafeArray: ThreadSafeArray) {
        self.threadSafeArray = threadSafeArray
    }
    
    override func main() {
        if isCancelled { return }
        threadSafeArray.append("Вторая Операция")
    }
}
