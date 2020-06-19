//
//  UICollectionView+Extension.swift
//  Swift-Common
//
//  Created by wang xiaolong on 2020/6/18.
//  Copyright © 2020 xiaosan. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    func numberOfItems() -> Int {
        var section = 0
        var itemsCount = 0
        while section < numberOfSections {
            itemsCount += numberOfItems(inSection: section)
            section += 1
        }
        return itemsCount
    }

    func reloadData(_ completion: @escaping () -> Void) {
        UIView.animate(withDuration: 0, animations: {
            self.reloadData()
        }, completion: { _ in
            completion()
        })
    }

}

extension UICollectionView {

    func register<T: UICollectionViewCell>(_ type: T.Type) {
        register(type.self, forCellWithReuseIdentifier: type.className)
    }

    func register<T: UICollectionViewCell>(_ type: T.Type) where T: XibInitable {
        register(type.nib, forCellWithReuseIdentifier: type.className)
    }

    func register<T: UICollectionReusableView>(supplementaryViewType type: T.Type, ofKind kind: String) {
        register(type.self, forSupplementaryViewOfKind: kind, withReuseIdentifier: type.className)
    }

    func register<T: UICollectionReusableView>(supplementaryViewType type: T.Type, ofKind kind: String) where T: XibInitable {
        register(type.nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: type.className)
    }

    func dequeueReusableCell<T: UICollectionViewCell>(_ type: T.Type, for indexPath: IndexPath) -> T {
        let dequeueCell = self.dequeueReusableCell(withReuseIdentifier: type.className, for: indexPath) as? T
        guard let cell = dequeueCell else {
            fatalError("Couldn't find nib file for `\(type.className)`")
        }
        return cell
    }

    func dequeueReusableSupplementaryView<T: UICollectionReusableView>(_ type: T.Type, kind: String, for indexPath: IndexPath) -> T {
        let dequeueView = self.dequeueReusableSupplementaryView(ofKind: kind,
                                                                withReuseIdentifier: type.className,
                                                                for: indexPath)
        guard let supplementaryView = dequeueView as? T else {
            fatalError("Couldn't find nib file for `\(type.className)`")
        }
        return supplementaryView
    }

}
