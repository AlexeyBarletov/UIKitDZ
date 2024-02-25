// CustomView.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Класс для создания кастомного сойства
final class CustomView: UIView {
    // MARK: Life Cycle

    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = bounds.height / 2
    }
}
