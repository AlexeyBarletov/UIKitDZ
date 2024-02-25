// CellCollectionView.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

class CellCollectionView: UICollectionViewCell {
    // MARK: - Public Properties

    static let сellCollectionView = "CellCollectionView"

    // MARK: Private Property

    var imageView = UIImageView()

    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    func setupCollection(param: Source) {
        imageView.image = UIImage(named: param.imageName)
    }

    // MARK: - Private Methods

    private func setupViews() {
        contentView.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true

        imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
}
