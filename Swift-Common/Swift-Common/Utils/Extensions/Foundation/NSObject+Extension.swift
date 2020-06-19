//
//  NSObject+Extension.swift
//  Swift-Common
//
//  Created by wang xiaolong on 2020/6/18.
//  Copyright © 2020 xiaosan. All rights reserved.
//

import Foundation

extension NSObject {

    static var className: String {
        return String(describing: self)
    }

}
