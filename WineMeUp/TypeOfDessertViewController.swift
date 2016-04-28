//
//  TypeOfDessertViewController.swift
//  WineMeUp
//
//  Created by loretta chan on 4/27/16.
//  Copyright © 2016 loretta chan. All rights reserved.
//

import Foundation
import UIKit

class TypeOfDessertViewController: UIViewController {
    @IBOutlet var cakeButton: UIButton!
    @IBOutlet var iceCreamButton: UIButton!
    @IBOutlet var fruitsButton: UIButton!
    @IBOutlet var cheeseButton: UIButton!
    let prefs = NSUserDefaults.standardUserDefaults();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cakeButton.layer.borderWidth = 5;
        cakeButton.layer.cornerRadius = 7;
        cakeButton.layer.borderColor = UIColor.blackColor().CGColor
        fruitsButton.layer.borderWidth = 5;
        fruitsButton.layer.cornerRadius = 7;
        fruitsButton.layer.borderColor = UIColor.blackColor().CGColor
        cheeseButton.layer.borderWidth = 5;
        cheeseButton.layer.cornerRadius = 7;
        cheeseButton.layer.borderColor = UIColor.blackColor().CGColor
        iceCreamButton.layer.borderWidth = 5;
        iceCreamButton.layer.cornerRadius = 7;
        iceCreamButton.layer.borderColor = UIColor.blackColor().CGColor
        
        
    }
    
    @IBAction func cakeButtonClicked(sender: AnyObject) {
        prefs.setValue(1, forKey: "typeOfDessert")
    }
    
    @IBAction func cheeseButtonClicked(sender: AnyObject) {
        prefs.setValue(3, forKey: "typeOfDessert")
    }
    
    @IBAction func iceCreamButtonClicked(sender: AnyObject) {
        prefs.setValue(2, forKey: "typeOfDessert")
    }
    
    @IBAction func fruitsButtonClicked(sender: AnyObject) {
        prefs.setValue(4, forKey: "typeOfDessert")
    }
    
}