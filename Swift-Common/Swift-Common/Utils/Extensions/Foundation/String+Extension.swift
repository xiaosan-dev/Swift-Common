//
//  String+Extension.swift
//  Swift-Common
//
//  Created by wang xiaolong on 2020/6/18.
//  Copyright © 2020 xiaosan. All rights reserved.
//

import Foundation

extension String {

    func trimmed() -> String {
        return trimmingCharacters(in: .whitespacesAndNewlines)
    }

    var attributedString: NSMutableAttributedString {
        return NSMutableAttributedString(string: self)
    }

    var isValidEmail: Bool {
        // http://emailregex.com/
        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        return range(of: regex,
                     options: .regularExpression,
                     range: nil, locale: nil) != nil
    }

    var containEmoji: Bool {
        for scalar in unicodeScalars {
            switch scalar.value {
            case 0x1F600...0x1F64F, // Emoticons
            0x1F300...0x1F5FF, // Misc Symbols and Pictographs
            0x1F680...0x1F6FF, // Transport and Map
            0x1F1E6...0x1F1FF, // Regional country flags
            0x2600...0x26FF, // Misc symbols
            0x2700...0x27BF, // Dingbats
            0xE0020...0xE007F, // Tags
            0xFE00...0xFE0F, // Variation Selectors
            0x1F900...0x1F9FF, // Supplemental Symbols and Pictographs
            127000...127600, // Various asian characters
            65024...65039, // Variation selector
            9100...9300, // Misc items
            8400...8447: // Combining Diacritical Marks for Symbols
                return true
            default:
                continue
            }
        }
        return false
    }

    func contains(_ string: String, caseSensitive: Bool = true) -> Bool {
        if !caseSensitive {
            return range(of: string, options: .caseInsensitive) != nil
        }
        return range(of: string) != nil
    }

}

extension String {

    var date: Date? {
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone.current
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.date(from: self)
    }

}
