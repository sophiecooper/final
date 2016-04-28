//
//  TypeOfSauceViewController.swift
//  WineMeUp
//
//  Created by loretta chan on 4/27/16.
//  Copyright © 2016 loretta chan. All rights reserved.
//

import Foundation
import UIKit

class TypeOfSauceViewController: UIViewController {
    
    @IBOutlet var redSauceButton: UIButton!
    @IBOutlet var whiteSauceButton: UIButton!
    @IBOutlet var pestoSauceButton: UIButton!
    @IBOutlet var noSauceButton: UIButton!
    let prefs = NSUserDefaults.standardUserDefaults();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSauceButton.layer.borderWidth = 5;
        redSauceButton.layer.cornerRadius = 7;
        redSauceButton.layer.borderColor = UIColor.blackColor().CGColor
        whiteSauceButton.layer.borderWidth = 5;
        whiteSauceButton.layer.cornerRadius = 7;
        whiteSauceButton.layer.borderColor = UIColor.blackColor().CGColor
        pestoSauceButton.layer.borderWidth = 5;
        pestoSauceButton.layer.cornerRadius = 7;
        pestoSauceButton.layer.borderColor = UIColor.blackColor().CGColor
        noSauceButton.layer.borderWidth = 5;
        noSauceButton.layer.cornerRadius = 7;
        noSauceButton.layer.borderColor = UIColor.blackColor().CGColor
        
        
    }
    
    @IBAction func redSauceButtonClicked(sender: AnyObject) {
        prefs.setValue(1, forKey: "typeOfSauce")
    }
    
    @IBAction func whiteSauceButtonClicked(sender: AnyObject) {
        prefs.setValue(2, forKey: "typeOfSauce")
    }
    
    @IBAction func pestoSauceButtonClicked(sender: AnyObject) {
        prefs.setValue(3, forKey: "typeOfSauce")
    }
    
    @IBAction func noSauceButtonClicked(sender: AnyObject) {
        prefs.setValue(4, forKey: "typeOfSauce")
    }
    
}