//
//  UITextView+Extension.swift
//  Swift-Common
//
//  Created by wang xiaolong on 2020/6/18.
//  Copyright © 2020 xiaosan. All rights reserved.
//

import UIKit

extension UITextView {

    func clear() {
        text = ""
        attributedText = NSAttributedString(string: "")
    }

    func wrapToContent() {
        contentInset = .zero
        scrollIndicatorInsets = .zero
        contentOffset = .zero
        textContainerInset = .zero
        textContainer.lineFragmentPadding = 0
        sizeToFit()
    }

}
