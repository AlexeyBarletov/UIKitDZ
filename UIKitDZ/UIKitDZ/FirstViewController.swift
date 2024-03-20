// FirstViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Задача номер 5 На остановку таймера, когда счет достигнет 5
class FirstViewController: UIViewController {
    // MARK: Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        let infinityThread = InfinityLoop()
        infinityThread.start()
        print(infinityThread.isExecuting)
        sleep(2)
        print(infinityThread.isCancelled)
        infinityThread.cancel()
        print(infinityThread.isFinished)
    }
}

class InfinityLoop: Thread {
    var counter = 0

    override func main() {
        super.main()

        while counter < 30, !isCancelled {
            Timer.scheduledTimer(withTimeInterval: 0, repeats: true) { _ in

                self.counter += 1
                print(self.counter)
                InfinityLoop.sleep(forTimeInterval: 1)
            }
            RunLoop.current.run(until: Date() + 5)
        }
    }
}
