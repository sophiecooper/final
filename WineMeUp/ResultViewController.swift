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
    
    var text = "sample text"
    var image = ""
    
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
        static let kUnderTwentyFive = 1
        static let kOverTwentyFive = 2
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
                        switch priceRange {
                        case PriceRange.kUnderTwentyFive:
                            text = "We recommend the 2014 Croft Vineyard Sauvignon Blanc for $22.00. This delicious wine makes you wish that a lot more Sauv Blanc was coming out of the Willamette Valley. It's sharp, spicy and bright. The grapefruit and pineapple flavors carry well-defined accents of herb and pine needle. The pinpoint acidity adds further focus. Source: winemag.com"
                            image = "sblanc1.jpeg";
                        case PriceRange.kOverTwentyFive:
                            text = "We recommend the Joseph Phelps 2014 Sauvignon Blanc for $35. Made entirely from estate fruit, and given time to settle in French oak puncheons, only a third of them new, this dry and complex white is easily quaffable and yet so much more. Citrus peel and dried herb complement on the nose and palate, with a lightness of being that never veers on frivolous. Source: winemag.com"
                            image = "sblanc2.jpeg";
                        default:
                            break
                    }
                    
                    
                    
                    case Meat.kRedMeat:
                        switch priceRange {
                        case PriceRange.kOverTwentyFive:
                            text = "We recommend the Black Stallion Napa Valley Cabernet Sauvignon for $39.99. As its name might suggest, this is full-bodied and balanced - with a savory nose of blackberries, cassis, spice and a hint of peppermint that go well with the beefy flavors of gourmet meat. Sit back and soak up the taste of rich black cherry, mocha espresso, brown spice and caramel as they unfold gracefully across the palate with smooth, silky tannins and a long elegant finish. Source: Omahasteaks.com"
                            image = "cab2.jpg";
                        case PriceRange.kUnderTwentyFive:
                            text = "We recommend the 337 Cabernet Sauvignon for $12.00. 337 is the most coveted Cabernet Sauvignon vine stock in Bordeaux, France. These rare vines are prized for their concentrated flavor and thrive in the red soils and cobblestones of our Lodi vineyard. The resulting wine exudes seductive aromas of mocha and dark cherry followed by intense flavors of ripe blackberry and spice. Enjoy with savory pasta, pot roast, thick steaks and creamy cheeses. Source: Lodi Wine."
                            image = "cab1.jpeg";
                        default:
                            break
                    }
                    
                    
                    case Meat.kSeafood:
                        switch priceRange {
                        case PriceRange.kUnderTwentyFive:
                            text = "We recommend the Franciscan Estate Napa Valley Chardonnay for $17.99. A buttery chardonnay can really enhance seafood flavors and textures. Medium bodied, this wine offers softened tannins that are appealing on the palate. The co-mingling of pear, lemon, lime and oak will work well on the table. Restrained and approachable, it’s well made and easy to like. Source: Winemadeeasy.com "
                            image = "chardonnay1.jpg";
                        case PriceRange.kOverTwentyFive:
                            text = "We recommend the 2011 Carneros Chardonnay from Trinitas Cellars for $38.00. Barrel aging in American oak lends to aromas of toasty, sun- kissed straw. Under the toast, subtle hints of bright citrus, vanilla, and toffee will fill your glass. Secondary fermentation creates a mid-palate with rich flavors of creamy butter and caramel. The medium toasted barrels provide the caramel and butterscotch notes. The surprisingly bright finish lingers with hints of baked granny smith apple."
                            image = "Chardonnay2.png";
                        default:
                            break
                    }

                    case Meat.kNoMeat:
                        switch priceRange {
                        case PriceRange.kUnderTwentyFive:
                            text = "We recommend the 2014 Glatzer Gruner Veltliner for $14.99. 'The savory, green tones with celeriac and white pepper notes of a classic gruner are a perfect match for a salad. It enhances all farm-fresh flavors of the a great salad and brings brightness to the finish. Gruner also generally has enough weight on the palate to go with salad that have proteins. There's enough ripeness to balance out a grilled chicken or egg preparation, as well as acidity if you like salmon or blue cheese with your salad. Other great wines that have lovely, fresh green tones that work well with salads: Sancerre, Chablis, Arneis, and even a Blanc de Blancs Champagne.'—June Rodil (Qui), "
                            image = "gruner.jpeg";
                        case PriceRange.kOverTwentyFive:
                            text = "We recommend the 2014 Habit Gruner Veltliner for $27.99. 'The savory, green tones with celeriac and white pepper notes of a classic gruner are a perfect match for a salad. It enhances all farm-fresh flavors of the a great salad and brings brightness to the finish. Gruner also generally has enough weight on the palate to go with salad that have proteins. There's enough ripeness to balance out a grilled chicken or egg preparation, as well as acidity if you like salmon or blue cheese with your salad. Other great wines that have lovely, fresh green tones that work well with salads: Sancerre, Chablis, Arneis, and even a Blanc de Blancs Champagne.'—June Rodil (Qui), "
                            image = "gruner2.jpeg";
                        default:
                            break
                    }

                    default:
                        break
                }
                
                break
            case MainDish.kPasta:
                break
            case MainDish.kRice:
                break
            case MainDish.kSalad:
                switch priceRange {
                case PriceRange.kUnderTwentyFive:
                    text = "We recommend the 2014 Glatzer Gruner Veltliner for $14.99. 'The savory, green tones with celeriac and white pepper notes of a classic gruner are a perfect match for a salad. It enhances all farm-fresh flavors of the a great salad and brings brightness to the finish. Gruner also generally has enough weight on the palate to go with salad that have proteins. There's enough ripeness to balance out a grilled chicken or egg preparation, as well as acidity if you like salmon or blue cheese with your salad. Other great wines that have lovely, fresh green tones that work well with salads: Sancerre, Chablis, Arneis, and even a Blanc de Blancs Champagne.'—June Rodil (Qui), "
                    image = "gruner.jpeg";
                case PriceRange.kOverTwentyFive:
                    text = "We recommend the 2014 Habit Gruner Veltliner for $27.99. 'The savory, green tones with celeriac and white pepper notes of a classic gruner are a perfect match for a salad. It enhances all farm-fresh flavors of the a great salad and brings brightness to the finish. Gruner also generally has enough weight on the palate to go with salad that have proteins. There's enough ripeness to balance out a grilled chicken or egg preparation, as well as acidity if you like salmon or blue cheese with your salad. Other great wines that have lovely, fresh green tones that work well with salads: Sancerre, Chablis, Arneis, and even a Blanc de Blancs Champagne.'—June Rodil (Qui), "
                    image = "gruner2.jpeg";
                default:
                    break
                }
            
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
                    switch priceRange {
                    case PriceRange.kUnderTwentyFive:
                        text = "We recommend the 2014 Croft Vineyard Sauvignon Blanc for $22.00. This delicious wine makes you wish that a lot more Sauv Blanc was coming out of the Willamette Valley. It's sharp, spicy and bright. The grapefruit and pineapple flavors carry well-defined accents of herb and pine needle. The pinpoint acidity adds further focus. Source: winemag.com"
                        image = "sblanc1.jpeg";
                    case PriceRange.kOverTwentyFive:
                        text = "We recommend the Joseph Phelps 2014 Sauvignon Blanc for $35. Made entirely from estate fruit, and given time to settle in French oak puncheons, only a third of them new, this dry and complex white is easily quaffable and yet so much more. Citrus peel and dried herb complement on the nose and palate, with a lightness of being that never veers on frivolous. Source: winemag.com"
                        image = "sblanc2.jpeg";
                    default:
                        break
                    }

                case Meat.kRedMeat:
                    switch priceRange {
                    case PriceRange.kOverTwentyFive:
                        text = "We recommend the Black Stallion Napa Valley Cabernet Sauvignon for $39.99. As its name might suggest, this is full-bodied and balanced - with a savory nose of blackberries, cassis, spice and a hint of peppermint that go well with the beefy flavors of gourmet meat. Sit back and soak up the taste of rich black cherry, mocha espresso, brown spice and caramel as they unfold gracefully across the palate with smooth, silky tannins and a long elegant finish. Source: Omahasteaks.com"
                        image = "cab2.jpg";
                    case PriceRange.kUnderTwentyFive:
                        text = "We recommend the 337 Cabernet Sauvignon for $12.00. 337 is the most coveted Cabernet Sauvignon vine stock in Bordeaux, France. These rare vines are prized for their concentrated flavor and thrive in the red soils and cobblestones of our Lodi vineyard. The resulting wine exudes seductive aromas of mocha and dark cherry followed by intense flavors of ripe blackberry and spice. Enjoy with savory pasta, pot roast, thick steaks and creamy cheeses. Source: Lodi Wine."
                        image = "cab1.jpeg";
                    default:
                        break
                    }
                    
                    
                    
                case Meat.kSeafood:
                    switch priceRange {
                    case PriceRange.kUnderTwentyFive:
                        text = "We recommend the Franciscan Estate Napa Valley Chardonnay for $17.99. A buttery chardonnay can really enhance seafood flavors and textures. Medium bodied, this wine offers softened tannins that are appealing on the palate. The co-mingling of pear, lemon, lime and oak will work well on the table. Restrained and approachable, it’s well made and easy to like. Source: Winemadeeasy.com "
                        image = "chardonnay1.jpg";
                    case PriceRange.kOverTwentyFive:
                        text = "We recommend the 2011 Carneros Chardonnay from Trinitas Cellars for $38.00. Barrel aging in American oak lends to aromas of toasty, sun- kissed straw. Under the toast, subtle hints of bright citrus, vanilla, and toffee will fill your glass. Secondary fermentation creates a mid-palate with rich flavors of creamy butter and caramel. The medium toasted barrels provide the caramel and butterscotch notes. The surprisingly bright finish lingers with hints of baked granny smith apple."
                        image = "Chardonnay2.png";
                    default:
                        break
                    }
                case Meat.kNoMeat:
                    switch priceRange {
                    case PriceRange.kUnderTwentyFive:
                        text = "We recommend the 2014 Glatzer Gruner Veltliner for $14.99. 'The savory, green tones with celeriac and white pepper notes of a classic gruner are a perfect match for a salad. It enhances all farm-fresh flavors of the a great salad and brings brightness to the finish. Gruner also generally has enough weight on the palate to go with salad that have proteins. There's enough ripeness to balance out a grilled chicken or egg preparation, as well as acidity if you like salmon or blue cheese with your salad. Other great wines that have lovely, fresh green tones that work well with salads: Sancerre, Chablis, Arneis, and even a Blanc de Blancs Champagne.'—June Rodil (Qui), "
                        image = "gruner.jpeg";
                    case PriceRange.kOverTwentyFive:
                        text = "We recommend the 2014 Habit Gruner Veltliner for $27.99. 'The savory, green tones with celeriac and white pepper notes of a classic gruner are a perfect match for a salad. It enhances all farm-fresh flavors of the a great salad and brings brightness to the finish. Gruner also generally has enough weight on the palate to go with salad that have proteins. There's enough ripeness to balance out a grilled chicken or egg preparation, as well as acidity if you like salmon or blue cheese with your salad. Other great wines that have lovely, fresh green tones that work well with salads: Sancerre, Chablis, Arneis, and even a Blanc de Blancs Champagne.'—June Rodil (Qui), "
                        image = "gruner2.jpeg";
                    default:
                        break
                    }

                default:
                    break
                }
                
                break
            case MainDish.kPasta:
                break
            case MainDish.kRice:
                break
            case MainDish.kSalad:
                switch priceRange {
                case PriceRange.kUnderTwentyFive:
                    text = "We recommend the 2014 Glatzer Gruner Veltliner for $14.99. 'The savory, green tones with celeriac and white pepper notes of a classic gruner are a perfect match for a salad. It enhances all farm-fresh flavors of the a great salad and brings brightness to the finish. Gruner also generally has enough weight on the palate to go with salad that have proteins. There's enough ripeness to balance out a grilled chicken or egg preparation, as well as acidity if you like salmon or blue cheese with your salad. Other great wines that have lovely, fresh green tones that work well with salads: Sancerre, Chablis, Arneis, and even a Blanc de Blancs Champagne.'—June Rodil (Qui), "
                    image = "gruner.jpeg";
               case PriceRange.kOverTwentyFive:
                    text = "We recommend the 2014 Habit Gruner Veltliner for $27.99. 'The savory, green tones with celeriac and white pepper notes of a classic gruner are a perfect match for a salad. It enhances all farm-fresh flavors of the a great salad and brings brightness to the finish. Gruner also generally has enough weight on the palate to go with salad that have proteins. There's enough ripeness to balance out a grilled chicken or egg preparation, as well as acidity if you like salmon or blue cheese with your salad. Other great wines that have lovely, fresh green tones that work well with salads: Sancerre, Chablis, Arneis, and even a Blanc de Blancs Champagne.'—June Rodil (Qui), "
                    image = "gruner2.jpeg";
                default:
                    break
                }
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
        
        print("made it here")
        wineDescriptionTextView.text = text;
        wineImageView.image = UIImage(named: image)
    }
    
}