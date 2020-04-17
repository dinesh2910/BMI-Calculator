//
//  ResultViewController.swift
//  BMI Calculater
//
//  Created by Dinesh Danda on 4/16/20.
//  Copyright © 2020 Dinesh Danda. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var bmiValueLabel: UILabel!
    @IBOutlet weak var tipsLabel: UILabel!
    @IBOutlet weak var recalculateBtn: UIButton!
    
    var resultValue: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetUp()
        setUpButton()
    }
    
    
    func initialSetUp() {
        bmiValueLabel.text = resultValue
        tipsLabel.text = advice
        view.backgroundColor = color
    }
    func setUpButton() {
        recalculateBtn.setTitle("Re-Calculate", for: .normal)
        recalculateBtn.backgroundColor = UIColor.init(red:0.88, green:0.44, blue:0.33, alpha:1.00)
        recalculateBtn.setTitleColor(UIColor.white, for: .normal)
        recalculateBtn.layer.cornerRadius = 2.0
        recalculateBtn.titleLabel?.font = UIFont.systemFont(ofSize: 17.0, weight: .semibold)
    }

    
    @IBAction func didPressReCalculateBtn(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
