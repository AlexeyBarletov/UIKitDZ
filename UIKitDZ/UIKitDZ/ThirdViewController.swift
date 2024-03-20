// ThirdViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Задачу на работу с приоритетами потоков
class ThirdViewController: UIViewController {
    
    // MARK: Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        let thread1 = ThreadPrintDemon()
        let thread2 = ThreadPrintAngel()

        // Cначала 1 потом 2
        //  thread1.qualityOfService = .userInteractive
        // thread2.qualityOfService = .userInitiated

        // Снала 2 потом 1
        // thread1.qualityOfService = .background
        // thread2.qualityOfService = .userInitiated

        //  Приоритет в перемешку
        thread1.qualityOfService = .default
        thread2.qualityOfService = .default

        thread1.start()
        thread2.start()
    }
}

class ThreadPrintDemon: Thread {
    override func main() {
        for _ in 0 ..< 100 {
            print("1")
        }
    }
}

class ThreadPrintAngel: Thread {
    override func main() {
        for _ in 0 ..< 100 {
            print("2")
        }
    }
}
