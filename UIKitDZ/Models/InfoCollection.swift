// InfoCollection.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// информация о коллекции
struct Source {
    /// имя каринки
    let imageName: String
    static func photos() -> [Source] {
        [
            .init(imageName: "start"),
            .init(imageName: "spaceview"),
            .init(imageName: "spaceship"),
            .init(imageName: "start"),
            .init(imageName: "spaceship"),
            .init(imageName: "spaceview"),
            .init(imageName: "earth"),
            .init(imageName: "start"),
            .init(imageName: "spaceship"),
            .init(imageName: "spaceview"),
            .init(imageName: "start"),
            .init(imageName: "earth")
        ]
    }
}
