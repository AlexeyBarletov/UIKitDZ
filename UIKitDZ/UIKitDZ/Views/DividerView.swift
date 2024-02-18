// DividerView.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

final class DividerView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupUI() {
        backgroundColor = .systemGray5
        translatesAutoresizingMaskIntoConstraints = false
    }
}
