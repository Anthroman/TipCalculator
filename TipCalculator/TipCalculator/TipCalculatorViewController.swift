//
//  TipCalculatorViewController.swift
//  TipCalculator
//
//  Created by Anthroman on 4/6/20.
//  Copyright © 2020 Anthroman. All rights reserved.
//

import UIKit

class TipCalculatorViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var basePriceLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var downArrowImage: UIImageView!
    
    //MARK: - Properties
    var basePrice: String = "" {
        didSet {
            updateViews()
        }
    }
    
    var tipAmount: String = "" {
        didSet {
            updateViews()
        }
    }
    
    var totalAmount: String = "" {
        didSet {
            updateViews()
        }
    }
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    //MARK: - Actions
    
    @IBAction func zeroButtonTapped(_ sender: UIButton) {
        if basePrice == "" {
            return
        } else {
            basePrice += "0"
        }
    }
    
    @IBAction func oneButtonTapped(_ sender: UIButton) {
        basePrice += "1"
    }
    
    @IBAction func twoButtontapped(_ sender: UIButton) {
        basePrice += "2"
    }
    
    @IBAction func threeButtonTapped(_ sender: UIButton) {
        basePrice += "3"
    }
    
    @IBAction func fourButtonTapped(_ sender: UIButton) {
        basePrice += "4"
    }
    
    @IBAction func fiveButtonTapped(_ sender: UIButton) {
        basePrice += "5"
    }
    
    @IBAction func sixButtonTapped(_ sender: UIButton) {
        basePrice += "6"
    }
    
    @IBAction func sevenButtonTapped(_ sender: UIButton) {
        basePrice += "7"
    }
    
    @IBAction func eightButtonTapped(_ sender: UIButton) {
        basePrice += "8"
    }
    
    @IBAction func nineButtonTapped(_ sender: UIButton) {
        basePrice += "9"
    }
    
    @IBAction func decimalButtonTapped(_ sender: UIButton) {
        if basePrice == "" {
            basePrice += "0."
        } else if basePrice.contains(".") {
            return
        } else {
            basePrice += "."
        }
    }
    
    @IBAction func twentyPercentButtonTapped(_ sender: UIButton) {
        if basePrice == "" {
            return
        } else {
            tipAmount += String(Double(basePrice)! * 0.20)
            totalAmountLabel.text = ""
            totalAmount += String("$\((Double(basePrice)! + Double(tipAmount)!))")
            downArrowImage.isHidden = true
        }
    }
    
    @IBAction func fifteenPercentButtonTapped(_ sender: UIButton) {
        if basePrice == "" {
            return
        } else {
            tipAmount += String(Double(basePrice)! * 0.15)
            totalAmountLabel.text = ""
            totalAmount += String("$\((Double(basePrice)! + Double(tipAmount)!))")
            downArrowImage.isHidden = true
        }
    }
    
    @IBAction func tenPercentButtonTapped(_ sender: UIButton) {
        if basePrice == "" {
            return
        } else {
            tipAmount += String(Double(basePrice)! * 0.10)
            totalAmountLabel.text = ""
            totalAmount += String("$\((Double(basePrice)! + Double(tipAmount)!))")
            downArrowImage.isHidden = true
        }
    }
    
    @IBAction func angryButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func clearButtonTapped(_ sender: UIButton) {
        downArrowImage.isHidden = true
        basePrice = ""
        tipAmount = ""
        totalAmount = ""
    }
    
    @IBAction func enterButtonTapped(_ sender: UIButton) {
        downArrowImage.isHidden = false
        if tipAmountLabel.text != "" {
            return
        } else {
        tipAmountLabel.text = "How was service?"
        }
    }
    //MARK: - Helpers
    
    func updateViews() {
        basePriceLabel.text = basePrice
        tipAmountLabel.text = tipAmount
        totalAmountLabel.text = totalAmount
    }
    
    func setUpUI() {
        downArrowImage.isHidden = true
        tipAmountLabel.text = ""
        totalAmountLabel.text = ""
    }
}
