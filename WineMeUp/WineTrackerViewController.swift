//
//  DailyWineViewController.swift
//  WineMeUp
//
//  Created by Sophie Cooper on 4/28/16.
//  Copyright © 2016 loretta chan. All rights reserved.
//

import Foundation
import UIKit

class WineTrackerViewController: UIViewController {
    
    
    var wineInput:[(item: Int, date: NSDate)] = []
    
    
    @IBOutlet weak var DailyGlassesOfWine: UILabel!
    
    @IBOutlet weak var WeeklyGlassesOfWine: UILabel!
    
    @IBOutlet weak var MonthlyGlassesOfWine: UILabel!
    
    @IBOutlet weak var NumberOfGlassesInput: UITextField!

    @IBOutlet weak var EnterButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateNumberOfGlasses()
    }
    
    @IBAction func inputWine() {
        let currInput = Int(NumberOfGlassesInput.text!)
        if currInput != nil {
            wineInput.append((currInput!, NSDate()))
            print(wineInput)
        }
        NumberOfGlassesInput.text = ""
        updateNumberOfGlasses()
    }
    
    
    
    
    func updateNumberOfGlasses() {
        let currentTime = NSDate()
        var dailyGlasses:Int = 0;
        var weeklyGlasses:Int = 0;
        var monthlyGlasses:Int = 0;
        
        let OneDayExpireDate = currentTime.dateByAddingTimeInterval((60*60*24))
        let OneWeekExpireDate = currentTime.dateByAddingTimeInterval((60*60*24*7))
        let OneMonthExpireDate = currentTime.dateByAddingTimeInterval((60*60*24*31))
        
        for item in wineInput {
            let wineDate = item.1
            
            if wineDate.compare(OneDayExpireDate) == NSComparisonResult.OrderedAscending {
                dailyGlasses += item.0
            }
            if wineDate.compare(OneWeekExpireDate) == NSComparisonResult.OrderedAscending {
                weeklyGlasses += item.0
            }
            if wineDate.compare(OneMonthExpireDate) == NSComparisonResult.OrderedAscending {
                monthlyGlasses += item.0
            }
        }
        DailyGlassesOfWine.text = String(dailyGlasses)
        WeeklyGlassesOfWine.text = String(weeklyGlasses)
        MonthlyGlassesOfWine.text = String(monthlyGlasses)
    }
    
    
    
    
}
