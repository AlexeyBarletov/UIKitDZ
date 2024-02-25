// СollectionPicturesCell.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

class СollectionPicturesCell: UITableViewCell {
    // MARK: - Public Properties

    static let сollectionPicturesCell = "СollectionPicturesCell"
//
//    var example = Source.photos()
    var listImage = [Source]()

    // MARK: - Private Methods

    private var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = .init(width: UIScreen.main.bounds.width / 3.04, height: UIScreen.main.bounds.width / 3.04)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        collectionView.showsHorizontalScrollIndicator = false

        collectionView.register(
            CellCollectionView.self,
            forCellWithReuseIdentifier: CellCollectionView.сellCollectionView
        )
        collectionView.backgroundColor = UIColor.white
        layout.minimumLineSpacing = 1.5
        layout.minimumInteritemSpacing = 1.5
        return collectionView
    }()

    // MARK: - Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .white
        setupContenView()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    func setupImage(param: [Source]) {
        listImage = param
        let cellHeight = (param.count / 3) * Int(UIScreen.main.bounds.width) / 3
        collectionView.heightAnchor.constraint(equalToConstant: CGFloat(cellHeight)).isActive = true
    }

    func setupContenView() {
        contentView.addSubview(collectionView)
        collectionView.dataSource = self
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
    }
}

extension СollectionPicturesCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        listImage.count
    }

    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: CellCollectionView.сellCollectionView,
            for: indexPath
        ) as? CellCollectionView else { return UICollectionViewCell() }
        cell.setupCollection(param: listImage[indexPath.item])
        return cell
    }
}
