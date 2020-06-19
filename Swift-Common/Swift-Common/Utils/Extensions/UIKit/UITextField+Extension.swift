//
//  UITextField+Extension.swift
//  Swift-Common
//
//  Created by wang xiaolong on 2020/6/18.
//  Copyright © 2020 xiaosan. All rights reserved.
//

import UIKit

extension UITextField {
    
    var isEmpty: Bool {
        return text?.isEmpty == true
    }

}

extension UITextField {

    func clear() {
        text = ""
        attributedText = NSAttributedString(string: "")
    }

    func addPaddingLeft(_ padding: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: padding, height: frame.height))
        leftView = paddingView
        leftViewMode = .always
    }

    func addPaddingLeftIcon(_ image: UIImage, padding: CGFloat) {
        let imageView = UIImageView(image: image)
        imageView.contentMode = .center
        leftView = imageView
        leftView?.frame.size = CGSize(width: image.size.width + padding, height: image.size.height)
        leftViewMode = .always
    }

}
