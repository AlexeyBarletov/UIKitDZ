// ThreeViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

class ThreeViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       //DispatchQueue.global().async используется для создания и выполнения асинхронных задач в фоновых потоках
        //Task.detached()управляет выполнением асинхронной задачи в своем собственном потоке.
        //   Task.detached(priority: .userInitiated)
        //Задачи с более высоким приоритетом (.userInitiated) могут иметь возможность меньше ждать и более оперативно выполняться в перегруженных системах
        print("Task 1 is finished")
        
        Task.detached(priority: .userInitiated) {
            for i in 0..<50 {
                print(i)
            }
            print("Task 2 is finished")
            print(Thread.current)
        }
        
        print("Task 3 is finished")
    }
}

