// FinalPostViewCell.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Ячейка для финального поста
class FinalPostViewCell: FirstPostViewCell {
    // MARK: - Public Properties

    static var exampleFirstView = FirstPostViewCell()

    // MARK: - Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .white
    }
}
