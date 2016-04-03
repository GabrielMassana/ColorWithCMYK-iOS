//
//  UIColor+CMYK.swift
//  ColorWithCMYK
//
//  Created by GabrielMassana on 03/04/2016.
//  Copyright © 2016 GabrielMassana. All rights reserved.
//
//  Formula: http://www.rapidtables.com/convert/color/cmyk-to-rgb.htm
//

import UIKit

public extension UIColor {

    @objc(cmyk_colorWithC:M:Y:K:)
    func colorWithCMYK(c c: CGFloat, m: CGFloat, y: CGFloat, k: CGFloat) -> UIColor? {
        
        guard c <= 1.0 && c >= 0.0 else { return nil }
        guard m <= 1.0 && m >= 0.0 else { return nil }
        guard y <= 1.0 && y >= 0.0 else { return nil }
        guard k <= 1.0 && k >= 0.0 else { return nil }

        let r: CGFloat = (1 - c) * (1 - k)
        let g: CGFloat = (1 - m) * (1 - k)
        let b: CGFloat = (1 - y) * (1 - k)
        
        return UIColor(red: r, green: g, blue: b, alpha: 1.0)
    }
}
