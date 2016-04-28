//
//  TypeOfBreakfastViewController.swift
//  WineMeUp
//
//  Created by loretta chan on 4/27/16.
//  Copyright © 2016 loretta chan. All rights reserved.
//

import Foundation
import UIKit

class TypeOfBreakfastViewController: UIViewController {
    
    @IBOutlet var eggsButton: UIButton!
    @IBOutlet var pancakesButton: UIButton!
    @IBOutlet var fruitsButton: UIButton!
    @IBOutlet var pastriesButton: UIButton!
    let prefs = NSUserDefaults.standardUserDefaults();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        eggsButton.layer.borderWidth = 5;
        eggsButton.layer.cornerRadius = 7;
        eggsButton.layer.borderColor = UIColor.blackColor().CGColor
        fruitsButton.layer.borderWidth = 5;
        fruitsButton.layer.cornerRadius = 7;
        fruitsButton.layer.borderColor = UIColor.blackColor().CGColor
        pastriesButton.layer.borderWidth = 5;
        pastriesButton.layer.cornerRadius = 7;
        pastriesButton.layer.borderColor = UIColor.blackColor().CGColor
        pancakesButton.layer.borderWidth = 5;
        pancakesButton.layer.cornerRadius = 7;
        pancakesButton.layer.borderColor = UIColor.blackColor().CGColor
        
        
    }
    
    @IBAction func eggsButtonClicked(sender: AnyObject) {
        prefs.setValue(1, forKey: "typeOfBrunch")
    }
    
    @IBAction func pancakesButtonClicked(sender: AnyObject) {
        prefs.setValue(3, forKey: "typeOfBrunch")
    }
    
    @IBAction func fruitsButtonClicked(sender: AnyObject) {
        prefs.setValue(2, forKey: "typeOfBrunch")
    }
    
    @IBAction func pastriesButtonClicked(sender: AnyObject) {
        prefs.setValue(4, forKey: "typeOfBrunch")
    }
    
}