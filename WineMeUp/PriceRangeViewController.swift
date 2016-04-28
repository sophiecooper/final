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
    
    @IBOutlet var zeroToTenButton: UIButton!
    @IBOutlet var tenToTwentyBUtton: UIButton!
    @IBOutlet var TwentyToThirtyButton: UIButton!
    @IBOutlet var ThirtyUpButton: UIButton!
    let prefs = NSUserDefaults.standardUserDefaults();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        zeroToTenButton.layer.borderWidth = 5;
        zeroToTenButton.layer.cornerRadius = 7;
        zeroToTenButton.layer.borderColor = UIColor.blackColor().CGColor
        tenToTwentyBUtton.layer.borderWidth = 5;
        tenToTwentyBUtton.layer.cornerRadius = 7;
        tenToTwentyBUtton.layer.borderColor = UIColor.blackColor().CGColor
        TwentyToThirtyButton.layer.borderWidth = 5;
        TwentyToThirtyButton.layer.cornerRadius = 7;
        TwentyToThirtyButton.layer.borderColor = UIColor.blackColor().CGColor
        ThirtyUpButton.layer.borderWidth = 5;
        ThirtyUpButton.layer.cornerRadius = 7;
        ThirtyUpButton.layer.borderColor = UIColor.blackColor().CGColor
        
        
    }
    
    @IBAction func zeroToTenButtonClicked(sender: AnyObject) {
        prefs.setValue(1, forKey: "priceRange")
    }
    
    @IBAction func tenToTwentyButtonClicked(sender: AnyObject) {
        prefs.setValue(2, forKey: "priceRange")
    }
    
    @IBAction func twentyToThirtyButtonClicked(sender: AnyObject) {
        prefs.setValue(3, forKey: "priceRange")
    }
    
    @IBAction func thirtyUpButtonClicked(sender: AnyObject) {
        prefs.setValue(4, forKey: "priceRange")
    }
}