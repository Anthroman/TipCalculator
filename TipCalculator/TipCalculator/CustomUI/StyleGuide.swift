//
//  StyleGuide.swift
//  TipCalculator
//
//  Created by Anthroman on 4/6/20.
//  Copyright © 2020 Anthroman. All rights reserved.
//

import UIKit

extension UIView {
    
    func addCornerRadius(_ radius: CGFloat = 4) {
        self.layer.cornerRadius = radius
    }
    
    func addAccentBorder(width: CGFloat = 1, color: UIColor = UIColor.slateGray) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
}

extension UIColor {
    static let clayBrown = UIColor(named: "clayBrown")!
    static let lightGreen = UIColor(named: "lightGreen")!
    static let mediumGreen = UIColor(named: "mediumGreen")!
    static let darkGreen = UIColor(named: "darkGreen")!
    static let slateGray = UIColor(named: "slateGray")!
}
