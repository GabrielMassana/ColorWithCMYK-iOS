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

    /**
     Creates UIColor object based on given CMYK values.

     - parameter C: CGFloat with the C(cyan) value. C value must be between 0.0 and 1.0.
     - parameter M: CGFloat with the M(magenta) value. M value must be between 0.0 and 1.0.
     - parameter Y: CGFloat with the Y(yellow) value. Y value must be between 0.0 and 1.0.
     - parameter K: CGFloat with the K(black) value. K value must be between 0.0 and 1.0.

     - returns: A UIColor from the given CMYK values.
     */
    @objc(cmyk_colorWithC:M:Y:K:)
    public class func colorWithCMYK(c c: CGFloat, m: CGFloat, y: CGFloat, k: CGFloat) -> UIColor? {
        
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
