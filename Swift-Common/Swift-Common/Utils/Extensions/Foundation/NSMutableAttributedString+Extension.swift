//
//  NSMutableAttributedString+Extension.swift
//  Swift-Common
//
//  Created by wang xiaolong on 2020/6/18.
//  Copyright © 2020 xiaosan. All rights reserved.
//

import UIKit

extension NSMutableAttributedString {
    
    private var defaultRange: NSRange {
        return NSRange(location: 0, length: self.length)
    }

    @discardableResult
    func font(_ font: UIFont, range: NSRange? = nil) -> Self {
        addAttribute(.font, value: font, range: range ?? defaultRange)
        return self
    }

    @discardableResult
    func textColor(_ color: UIColor, range: NSRange? = nil) -> Self {
        addAttribute(.foregroundColor, value: color, range: range ?? defaultRange)
        return self
    }

    @discardableResult
    func backgroundColor(_ color: UIColor, range: NSRange? = nil) -> Self {
        addAttribute(.backgroundColor, value: color, range: range ?? defaultRange)
        return self
    }
}
