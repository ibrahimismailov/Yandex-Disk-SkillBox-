//
//  Extension+UICollecctionView.swift
//  Yandex Disk [SkillBox]
//
//  Created by Abraam on 02.04.2023.
//

import UIKit

extension UICollectionView {
    static func createCollectionView() -> UICollectionView {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }
}
