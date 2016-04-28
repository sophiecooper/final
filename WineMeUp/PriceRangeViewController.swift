//
//  PriceRangeViewController.swift
//  WineMeUp
//
//  Created by loretta chan on 4/27/16.
//  Copyright © 2016 loretta chan. All rights reserved.
//

import Foundation
import UIKit

class PriceRangeViewController: UIViewController {

    @IBOutlet var underTwentyFiveButton: UIButton!
    @IBOutlet var overTwentyFiveButton: UIButton!
    let prefs = NSUserDefaults.standardUserDefaults();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        underTwentyFiveButton.layer.borderWidth = 5;
        underTwentyFiveButton.layer.cornerRadius = 7;
        underTwentyFiveButton.layer.borderColor = UIColor.blackColor().CGColor
        overTwentyFiveButton.layer.borderWidth = 5;
        overTwentyFiveButton.layer.cornerRadius = 7;
        overTwentyFiveButton.layer.borderColor = UIColor.blackColor().CGColor
        
        
    }
    
    @IBAction func underTwentyFiveButtonClicked(sender: AnyObject) {
        //prefs.setValue(1, forKey: "priceRange")
        print("cheaper")
    }
    
    @IBAction func overTwentyFiveButtonClicked(sender: AnyObject) {
        //prefs.setValue(2, forKey: "priceRange")
        print("make it rain")
    }
}