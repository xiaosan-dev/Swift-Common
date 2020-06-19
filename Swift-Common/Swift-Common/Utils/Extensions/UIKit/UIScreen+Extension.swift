//
//  UIScreen+Extension.swift
//  Swift-Common
//
//  Created by wang xiaolong on 2020/6/18.
//  Copyright © 2020 xiaosan. All rights reserved.
//

import UIKit.UIScreen

extension UIScreen {

    static var width: CGFloat {
        return size.width
    }

    static var height: CGFloat {
        return size.height
    }

    static var size: CGSize {
        return UIScreen.main.bounds.size
    }

}
