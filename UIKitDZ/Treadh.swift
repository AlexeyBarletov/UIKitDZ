// Treadh.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

import Foundation

class ThreadprintDemon: Thread {
    override func main() {
        for _ in 0 ..< 10 {
            print("a")
        }
    }

    override init() {
        super.init()
        setup()
    }

    func setup() {
        let thread1 = ThreadprintDemon()
        thread1.start()
    }
}

let thread1 = ThreadprintDemon()
thread1.start()

for _ in 0 ..< 10 {
    print("b")
}
