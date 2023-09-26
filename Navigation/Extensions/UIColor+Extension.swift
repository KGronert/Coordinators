//
//  UIColor+Extension.swift
//  Navigation
//
//  Created by Kamil Gronert on 26/09/2023.
//

import UIKit.UIColor

extension UIColor {
    var luminance: CGFloat {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0

        if getRed(&r, green: &g, blue: &b, alpha: &a) {
            return 0.2126 * r + 0.7152 * g + 0.0722 * b
        }

        return 0
    }
}
