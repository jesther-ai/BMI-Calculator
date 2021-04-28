//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Jesther Silvestre on 4/28/21.
//

import UIKit

class ResultViewController:UIViewController{
    var bmiValue:Float?
    var advice:String?
    var color:UIColor?
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = String(bmiValue!)
        adviceLabel.text = advice
        view.backgroundColor = color
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
