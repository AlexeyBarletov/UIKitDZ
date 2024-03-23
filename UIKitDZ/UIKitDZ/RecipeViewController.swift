//
//  SixthViewController.swift
//  UIKitDZ
//
//  Created by Алексей Барлетов on 23.03.2024.
//

import UIKit

///  ///  Проблема номер 4  livelock
/// livelock возникате когда программа выполняет несколько событий  парраллельно но эти программы не приближают ее к завершению
final class RecipeViewController: UIViewController {
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        DispatchQueue.global().async {
            self.thread1()
        }
        
        DispatchQueue.global().async {
            self.thread2()
        }
    }
    
    let resourceASemaphore = DispatchSemaphore(value: 1)
    let resourceBSemaphore = DispatchSemaphore(value: 1)
    
    func thread1() {
        print("Поток 1 пытается захватить Ресурс A")
        resourceASemaphore.wait() // Захват Ресурса A
        
        print("Поток 1 захватил Ресурс A и пытается захватить Ресурс B")
        Thread.sleep(forTimeInterval: 1) // Имитация работы для демонстрации livelock
        
        //resourceBSemaphore.wait() // Попытка захвата Ресурса B, который уже занят Потоком 2
        print("Поток 1 захватил Ресурс B")
        
        //resourceBSemaphore.signal()
        resourceBSemaphore.signal()
        
        //resourceASemaphore.signal()
        resourceASemaphore.signal()
    }
    
    func thread2() {
        print("Поток 2 пытается захватить Ресурс B")
        resourceBSemaphore.wait() // Захват Ресурса B
        
        print("Поток 2 захватил Ресурс B и пытается захватить Ресурс A")
        resourceASemaphore.wait()
        // Имитация работы для демонстрации livelock
        
        // resourceASemaphore.wait() // Попытка захвата Ресурса A, который уже занят Потоком 1
        print("Поток 2 захватил Ресурс A")
        
        //resourceASemaphore.signal()
        resourceASemaphore.signal()
        
        //resourceBSemaphore.signal()
        resourceBSemaphore.signal()
    }
}
