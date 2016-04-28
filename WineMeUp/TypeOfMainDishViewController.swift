//
//  TypeOfMainDishViewController.swift
//  WineMeUp
//
//  Created by loretta chan on 4/27/16.
//  Copyright © 2016 loretta chan. All rights reserved.
//

import Foundation
import UIKit

class TypeOfMainDishViewController: UIViewController {
    @IBOutlet var pastaButton: UIButton!
    @IBOutlet var saladButton: UIButton!
    @IBOutlet var meatButton: UIButton!
    @IBOutlet var riceButton: UIButton!
    let prefs = NSUserDefaults.standardUserDefaults();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pastaButton.layer.borderWidth = 5;
        pastaButton.layer.cornerRadius = 7;
        pastaButton.layer.borderColor = UIColor.blackColor().CGColor
        saladButton.layer.borderWidth = 5;
        saladButton.layer.cornerRadius = 7;
        saladButton.layer.borderColor = UIColor.blackColor().CGColor
        meatButton.layer.borderWidth = 5;
        meatButton.layer.cornerRadius = 7;
        meatButton.layer.borderColor = UIColor.blackColor().CGColor
        riceButton.layer.borderWidth = 5;
        riceButton.layer.cornerRadius = 7;
        riceButton.layer.borderColor = UIColor.blackColor().CGColor
        
        
    }
    
    @IBAction func pastaButtonClicked(sender: AnyObject) {
        prefs.setValue(1, forKey: "typeOfMainDish")
    }
    
    @IBAction func riceButtonClicked(sender: AnyObject) {
        prefs.setValue(4, forKey: "typeOfMainDish")
    }
    
    @IBAction func saladButtonClicked(sender: AnyObject) {
        prefs.setValue(2, forKey: "typeOfMainDish")
    }
    
    @IBAction func meatButtonClicked(sender: AnyObject) {
        prefs.setValue(3, forKey: "typeOfMainDish")
    }
}