//
//  TypeOfMeatViewController.swift
//  WineMeUp
//
//  Created by loretta chan on 4/27/16.
//  Copyright © 2016 loretta chan. All rights reserved.
//

import Foundation
import UIKit

class TypeOfMeatViewController: UIViewController {
    @IBOutlet var whiteMeatButton: UIButton!
    @IBOutlet var noMeatBUtton: UIButton!
    @IBOutlet var seafoodButton: UIButton!
    @IBOutlet var redMeatButton: UIButton!
    let prefs = NSUserDefaults.standardUserDefaults();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        whiteMeatButton.layer.borderWidth = 5;
        whiteMeatButton.layer.cornerRadius = 7;
        whiteMeatButton.layer.borderColor = UIColor.blackColor().CGColor
        noMeatBUtton.layer.borderWidth = 5;
        noMeatBUtton.layer.cornerRadius = 7;
        noMeatBUtton.layer.borderColor = UIColor.blackColor().CGColor
        seafoodButton.layer.borderWidth = 5;
        seafoodButton.layer.cornerRadius = 7;
        seafoodButton.layer.borderColor = UIColor.blackColor().CGColor
        redMeatButton.layer.borderWidth = 5;
        redMeatButton.layer.cornerRadius = 7;
        redMeatButton.layer.borderColor = UIColor.blackColor().CGColor
        
        
    }
    
    @IBAction func whiteMeatButtonClicked(sender: AnyObject) {
        prefs.setValue(1, forKey: "typeOfMeat")
    }
    
    @IBAction func redMeatButtonClicked(sender: AnyObject) {
        prefs.setValue(2, forKey: "typeOfMeat")
    }
    
    @IBAction func noMeatButtonClicked(sender: AnyObject) {
        prefs.setValue(4, forKey: "typeOfMeat")
    }
    
    @IBAction func seafoodButtonClicked(sender: AnyObject) {
        prefs.setValue(3, forKey: "typeOfMeat")
    }
}