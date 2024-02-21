// FinalPostViewCell.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

class FinalPostViewCell: UITableViewCell {
    static let indentifireFinalPost = "FinalPostViewCell "

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .blue
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
