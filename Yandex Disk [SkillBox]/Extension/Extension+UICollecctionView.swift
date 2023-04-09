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
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }
}
