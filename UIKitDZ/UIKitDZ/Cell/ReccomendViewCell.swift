// ReccomendViewCell.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

class ReccomendViewCell: UITableViewCell {
    static let indentifireReccomend = "ReccomendViewCell "

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .green
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
