// InfoCollection.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

struct Source {
    static func photos() -> [Photo] {
        [
            .init(id: 1, imageName: "start"),
            .init(id: 2, imageName: "spaceview"),
            .init(id: 3, imageName: "spaceship")
        ]
    }
}

struct Photo {
    let id: Int
    let imageName: String
}
