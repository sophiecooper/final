//
//  TypeOfMealViewController.swift
//  WineMeUp
//
//  Created by loretta chan on 4/27/16.
//  Copyright © 2016 loretta chan. All rights reserved.
//

import Foundation
import UIKit

class TypeOfMealViewController: UIViewController {
    @IBOutlet var brunchButton: UIButton!
    @IBOutlet var lunchButton: UIButton!
    @IBOutlet var dinnerButton: UIButton!
    @IBOutlet var dessertButton: UIButton!
    let prefs = NSUserDefaults.standardUserDefaults();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        brunchButton.layer.borderWidth = 5;
        brunchButton.layer.cornerRadius = 7;
        brunchButton.layer.borderColor = UIColor.blackColor().CGColor
        lunchButton.layer.borderWidth = 5;
        lunchButton.layer.cornerRadius = 7;
        lunchButton.layer.borderColor = UIColor.blackColor().CGColor
        dinnerButton.layer.borderWidth = 5;
        dinnerButton.layer.cornerRadius = 7;
        dinnerButton.layer.borderColor = UIColor.blackColor().CGColor
        dessertButton.layer.borderWidth = 5;
        dessertButton.layer.cornerRadius = 7;
        dessertButton.layer.borderColor = UIColor.blackColor().CGColor
        
        
    }
    
    @IBAction func brunchButtonClicked(sender: AnyObject) {
        prefs.setValue("1", forKey: "typeOfMeal")
    }
    
    @IBAction func lunchButtonClicked(sender: AnyObject) {
        prefs.setValue("2", forKey: "typeOfMeal")
    }
    
    @IBAction func dinnerButtonClicked(sender: AnyObject) {
        prefs.setValue("3", forKey: "typeOfMeal")
    }
    
    @IBAction func dessertButtonClicked(sender: AnyObject) {
        prefs.setValue("4", forKey: "typeOfMeal")
    }
}