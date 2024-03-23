//
//  Third ViewController.swift
//  UIKitDZ
//
//  Created by Алексей Барлетов on 23.03.2024.
//

import UIKit

/// Проблема номер 1 DeadLock(взаимная блокировка)
/// Это ситуация когда несколько потоков блокируют друг друга
final class ThirdiewController: UIViewController {
    
// MARK: Life Cycle
    
    override func viewDidLoad() {
         super.viewDidLoad()

         // mySerial
         let serialQueue = DispatchQueue(label: "com.example.myQueue")

         serialQueue.async {
             // делаем здесь async
             serialQueue.async {
                 print("This will never be printed.")
             }
         }
     }
 }

