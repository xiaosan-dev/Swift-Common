//
//  XibInstantiatable.swift
//  Swift-Common
//
//  Created by lio on 2019/6/13.
//  Copyright © 2019 lio. All rights reserved.
//

import UIKit

protocol XibInitable: class {}

extension XibInitable where Self: NSObject {

    static var nib: UINib {
        return UINib(nibName: self.className, bundle: Bundle(for: self))
    }

}

extension XibInitable where Self: UIView {
    
    static func initFromXib(withOwner ownerOrNil: Any? = nil) -> Self {
        guard let view = nib.instantiate(withOwner: ownerOrNil, options: nil).first as? Self else {
            fatalError("Couldn't find nib file for \(self.className)!")
        }
        return view
    }

}
