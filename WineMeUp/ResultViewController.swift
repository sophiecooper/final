//
//  ResultViewController.swift
//  WineMeUp
//
//  Created by loretta chan on 4/18/16.
//  Copyright © 2016 loretta chan. All rights reserved.
//

import Foundation
import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var wineImageView: UIImageView!
    @IBOutlet var wineDescriptionTextView: UITextView!
    let prefs = NSUserDefaults.standardUserDefaults()
    //Set up global constants
    struct Meal {
        static let kBrunch = 1
        static let kLunch = 2
        static let kDinner = 3
        static let kDessert = 4
    }
    
    struct Brunch {
        static let kEggs = 1
        static let kFruits = 2
        static let kPancakes = 3
        static let kPastries = 4
    }
    
    struct MainDish {
        static let kPasta = 1
        static let kSalad = 2
        static let kMeat = 3
        static let kRice = 4
    }
    
    struct Meat {
        static let kWhiteMeat = 1
        static let kRedMeat = 2
        static let kSeafood = 3
        static let kNoMeat = 4
    }
    
    struct Sauce {
        static let kRedSuace = 1
        static let kWhiteSauce = 2
        static let kPestoSauce = 3
        static let kNoSauce = 4
    }
    
    struct Dessert {
        static let kCake = 1
        static let kIceCream = 2
        static let kCheese = 3
        static let kFruits = 4
    }
    
    struct PriceRange {
        static let kZeroToTen = 1
        static let kTenToTwenty = 2
        static let kTwentyToThirty = 3
        static let kThirtyUp = 4
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let typeOfMeal = prefs.integerForKey("typeOfMeal")
        let typeOfMeat = prefs.integerForKey("typeOfMeat")
        let typeOfMainDish = prefs.integerForKey("typeOfMainDish")
        let typeOfBrunch = prefs.integerForKey("typeOfBrunch")
        let typeOfDessert = prefs.integerForKey("typeOfDessert")
        let typeOfSauce = prefs.integerForKey("typeOfSauce")
        let priceRange = prefs.integerForKey("priceRange")
        
        switch typeOfMeal {
            
        case Meal.kBrunch:
            print("brunch")
            switch typeOfBrunch {
            case Brunch.kEggs:
                break
            case Brunch.kPancakes:
                break
            case Brunch.kPastries:
                break
            case Brunch.kFruits:
                break
            default:
                break
            }
            break
            
        case Meal.kLunch:
            print("lunch")
            
            switch typeOfMainDish {
            case MainDish.kMeat:
                
                switch typeOfMeat {
                    case Meat.kWhiteMeat:
                        break
                    case Meat.kRedMeat:
                        break
                    case Meat.kSeafood:
                        break
                    case Meat.kNoMeat:
                        break
                    default:
                        break
                }
                
                break
            case MainDish.kPasta:
                break
            case MainDish.kRice:
                break
            case MainDish.kSalad:
                break
            default:
                break
            }
            break
            
        case Meal.kDinner:
            print("dinner")

            switch typeOfMainDish {
            case MainDish.kMeat:
                
                switch typeOfMeat {
                case Meat.kWhiteMeat:
                    break
                case Meat.kRedMeat:
                    break
                case Meat.kSeafood:
                    break
                case Meat.kNoMeat:
                    break
                default:
                    break
                }
                
                break
            case MainDish.kPasta:
                break
            case MainDish.kRice:
                break
            case MainDish.kSalad:
                break
            default:
                break
            }
            break
            
        case Meal.kDessert:
            print("dessert")
            
            switch typeOfDessert {
            case Dessert.kIceCream:
                break
            case Dessert.kCake:
                break
            case Dessert.kCheese:
                break
            case Dessert.kFruits:
                break
            default:
                break
            }
            
        default:
            break
        }
 
    }
    
}