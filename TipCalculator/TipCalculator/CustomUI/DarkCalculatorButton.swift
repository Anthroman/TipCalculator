//
//  DarkCalculatorButton.swift
//  TipCalculator
//
//  Created by Anthroman on 4/6/20.
//  Copyright © 2020 Anthroman. All rights reserved.
//

import UIKit

class DarkCalculatorButton: CalculatorButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.setUpDarkButtonUI()
    }
    
    func setUpDarkButtonUI() {
        self.backgroundColor = .darkGreen
        self.setTitleColor(.clayBrown, for: .normal)
        self.addCornerRadius(30)
        addAccentBorder()
    }
}
