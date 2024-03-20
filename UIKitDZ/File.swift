// File.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

class InfintyLoop: Thread {
    override init() {
        super.init()
        main()
    }

    override func main() {
        while !isCancelled {
            print("ф ")
        }
    }
}
