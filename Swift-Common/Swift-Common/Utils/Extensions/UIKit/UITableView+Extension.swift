//
//  UITableView+Extension.swift
//  Swift-Common
//
//  Created by wang xiaolong on 2020/6/18.
//  Copyright © 2020 xiaosan. All rights reserved.
//

import UIKit

extension UITableView {
    
    func numberOfRows() -> Int {
        var section = 0
        var rowCount = 0
        while section < numberOfSections {
            rowCount += numberOfRows(inSection: section)
            section += 1
        }
        return rowCount
    }

    func reloadData(_ completion: @escaping () -> Void) {
        UIView.animate(withDuration: 0, animations: {
            self.reloadData()
        }, completion: { _ in
            completion()
        })
    }

    func removeTableHeaderView() {
        tableHeaderView = nil
    }

    func removeTableFooterView() {
        tableFooterView = nil
    }

}

extension UITableView {

    func register<T: UITableViewCell>(_ type: T.Type) {
        register(type.self, forCellReuseIdentifier: type.className)
    }

    func register<T: UITableViewCell>(_ type: T.Type) where T: XibInitable {
        register(type.nib, forCellReuseIdentifier: type.className)
    }

    func registerHeaderFooterview<T: UITableViewHeaderFooterView>(_ type: T.Type) {
        register(type.self, forHeaderFooterViewReuseIdentifier: type.className)
    }

    func registerHeaderFooterview<T: UITableViewHeaderFooterView>(_ type: T.Type) where T: XibInitable {
        register(type.nib, forHeaderFooterViewReuseIdentifier: type.className)
    }

    func dequeueReusableCell<T: UITableViewCell>(_ type: T.Type, for indexPath: IndexPath) -> T {
        guard let cell = self.dequeueReusableCell(withIdentifier: type.className, for: indexPath) as? T else {
            fatalError("Couldn't find nib file for `\(type.className)`")
        }
        return cell
    }

    func dequeueReusableHeaderFooterView<T: UITableViewHeaderFooterView>(_ type: T.Type) -> T {
        let dequeueView = self.dequeueReusableHeaderFooterView(withIdentifier: type.className) as? T
        guard let headerFooterView = dequeueView else {
            fatalError("Couldn't find nib file for `\(type.className)`")
        }
        return headerFooterView
    }
}
