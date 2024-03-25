//
//  SevenViewController.swift
//  UIKitDZ
//
//  Created by Алексей Барлетов on 24.03.2024.
//import UIKit

import UIKit

final class SevenViewController: UIViewController {
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Task {
            await printMessage()
        }
    }
    
    func printMessage() async {
        let string = await withTaskGroup(of: String.self) { group -> String in
            // Добавляем строки в группу
            group.addTask {
                return "Hello"
            }
            group.addTask {
                return "My"
            }
            group.addTask {
                return "Road"
            }
            group.addTask {
                return "Map"
            }
            group.addTask {
                return "Group"
            }
            
            var collected = [String]()
            
            for await value in group {
                collected.append(value)
            }
            
            return collected.joined(separator: " ")
        }
        
        print(string)
    }
}
