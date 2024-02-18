// ModelInfo.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

struct Info {
    var nameImage: UIImage?
    var nameShoes: String
    var price: String
    var size: [Int]

    init(nameImage: UIImage? = nil, nameShoes: String, price: String) {
        self.nameImage = nameImage
        self.nameShoes = nameShoes
        self.price = price
        size = [Int]()
    }
}
