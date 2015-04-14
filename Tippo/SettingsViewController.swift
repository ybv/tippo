//
//  SettingsViewController.swift
//  Tippo
//
//  Created by Vaibhav Krishna on 4/11/15.
//  Copyright (c) 2015 Vaibhav Krishna. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipSegment: UISegmentedControl!
    var defaults = NSUserDefaults.standardUserDefaults()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        var defaultTipIndex = defaults.integerForKey("default_tip")
        
        defaultTipSegment.selectedSegmentIndex = defaultTipIndex

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func defaltTipAmountChnaged(sender: AnyObject) {
        
        defaults.setInteger(sender.selectedSegmentIndex, forKey: "default_tip")
        defaults.synchronize()

        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
