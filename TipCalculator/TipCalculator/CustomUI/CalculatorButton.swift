//
//  CalculatorButton.swift
//  TipCalculator
//
//  Created by Anthroman on 4/6/20.
//  Copyright © 2020 Anthroman. All rights reserved.
//

import UIKit

class CalculatorButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setUpButtonUI()
    }
    
    func setUpButtonUI() {
        self.backgroundColor = .mediumGreen
        self.setTitleColor(.clayBrown, for: .normal)
        self.addCornerRadius(30)
        addAccentBorder()
    }
}
