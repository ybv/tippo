//
//  ViewController.swift
//  Tippo
//
//  Created by Vaibhav Krishna on 4/10/15.
//  Copyright (c) 2015 Vaibhav Krishna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billAmountField: UITextField!
    @IBOutlet weak var tipSegment: UISegmentedControl!
    var defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  
    @IBAction func onEdit(sender: AnyObject) {
        let tipArray = [0.10,0.20,0.30]
        var defaultTipIndex = defaults.integerForKey("default_tip")
        var tipAmount = 0.00
        var defIndex = 0
        var billAmount = (billAmountField.text as NSString).doubleValue
        
        if tipSegment.selectedSegmentIndex < 0 {
            tipAmount = tipArray[defaultTipIndex]
            defIndex = defaultTipIndex
        }
        else{
            tipAmount = tipArray[tipSegment.selectedSegmentIndex]
            defIndex = tipSegment.selectedSegmentIndex
        }
       
        var tip = billAmount * tipAmount
        var total = billAmount + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        var colors = [UIColor.greenColor, UIColor.yellowColor,UIColor.redColor]
        
        totalLabel.textColor = colors[defIndex]()
        
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

