//
//  FourViewController.swift
//  UIKitDZ
//
//  Created by Алексей Барлетов on 24.03.2024.
//

import UIKit
final class FourViewController: UIViewController {
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Task {
            let result = await getRandomD6()
            print(result)
        }
    }
    
    func getRandomD6() async -> Int {
        Int.random(in: 1...6)
    }
}


