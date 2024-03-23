//
//  FourthViewController.swift
//  UIKitDZ
//
//  Created by Алексей Барлетов on 23.03.2024.
//

import UIKit
/// Проблема номер 2 Race Condition
///  Это когда время или порядок событий влияют на корекность результат
class FourthViewController: UIViewController {
    
    // MARK: Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        var sharedResource = 0
        // Создаем lock
        let lock = NSLock()
        
        DispatchQueue.global(qos: .background).async {
            for _ in 1...100 {
                lock.lock()
                sharedResource += 1
                lock.unlock()
            }
        }
        
        DispatchQueue.global(qos: .background).async {
            for _ in 1...100 {
                lock.lock()
                sharedResource += 1
                lock.unlock()
            }
        }
    }
}
