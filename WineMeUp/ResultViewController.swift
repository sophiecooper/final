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
            switch typeOfBrunch {
            case Brunch.kEggs:
                switch priceRange {
                case PriceRange.kUnderTwentyFive:
                    text = "We recommend Michel Gassier Nostre Pais Rouge ($17) - because the disparate elements on the plate of a classic fry-up -- streaky bacon, potatoes, roasted tomatoes, and kidneys -- call for a wine that brings them together, one with jammy-berry fruit flavors and an earthy undertone. Source: Martha Stewart"
                    image = "MichelGassierNostrePaisRouge.jpg"
                    break;
                case PriceRange.kOverTwentyFive:
                    text = "We recommend Rosemount Estate GSM (Grenache, Syrah, Mourvedre) 2003 McLaren Vale ($26)- because the disparate elements on the plate of a classic fry-up -- streaky bacon, potatoes, roasted tomatoes, and kidneys -- call for a wine that brings them together, one with jammy-berry fruit flavors and an earthy undertone. Source: Martha Stewart "
                    image = "RosemountEstateGSM.png"
                    break
                default:
                    break
                }
                break
            case Brunch.kPancakes:
                switch priceRange {
                case PriceRange.kUnderTwentyFive:
                    text = "We recommend Zardetto Prosecco di Conegliano Brut NV ($11) because its dry citrus flavors and lively effervescence are the perfect foil for the thick, sweet toppings, such as maple syrup and honey, that are often drizzled on these brunch mainstays. But Prosecco is equally suited to pancake and French toast partners that possess more acidity and fruit flavor, such as apple, rhubarb, or currant compotes. - Martha Stewart"
                    image = "ZardettoProsecco.jpg"
                    break;
                case PriceRange.kOverTwentyFive:
                    text = "We recommend La Gioiosa Prosecco 2014 ($26) because its dry citrus flavors and lively effervescence are the perfect foil for the thick, sweet toppings, such as maple syrup and honey, that are often drizzled on these brunch mainstays. But Prosecco is equally suited to pancake and French toast partners that possess more acidity and fruit flavor, such as apple, rhubarb, or currant compotes. Source: Martha Stewart"
                    image = "LaGioiosaProsecco.png"
                    break
                default:
                    break
                }

            case Brunch.kPastries:
                switch priceRange {
                case PriceRange.kUnderTwentyFive:
                    text = "We recommend J. Rogét American Champagne ($6) because buttery pastries and quick breads deserve a bubbly with some of the complex, yeast-biscuit notes one finds in distinguished Champagnes. An elegant sip and yet not so esteemed that dressing it down with a splash or two of fresh blood-orange juice would be out of the question. Source: Martha Stewart"
                    image = "JRogetChampagne.jpg"
                    break;
                case PriceRange.kOverTwentyFive:
                    text = "We recommend Moet & Chandon White Star ($35), because buttery pastries and quick breads deserve a bubbly with some of the complex, yeast-biscuit notes one finds in distinguished Champagnes. An elegant sip and yet not so esteemed that dressing it down with a splash or two of fresh blood-orange juice would be out of the question. Source: Martha Stewart"
                    image = "MoetChandon.jpg"
                    break
                default:
                    break
                }

                break
            case Brunch.kFruits:
                switch priceRange {
                case PriceRange.kUnderTwentyFive:
                    text = "We recommend Ametzoi Rubentis Txakolina 2014 ($19) - because it is unoaked - or subtly oaked - and fruity."
                    image = "AmetzoiRubentisTxakolina.jpg"
                    break;
                case PriceRange.kOverTwentyFive:
                    text = "We recommend Domaine Tempier Bandol Rose ($40) - it is the perfect wine for fruits : slightly effervescent, relatively low in alcohol at 11%, crisp, light, and refreshing. Source: thestreet.com"
                    image = "DomaineAndersonChardonnay.jpg"
                    break
                default:
                    break
                }
                break
            default:
                break
            }
            break
            
        case Meal.kLunch:
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
                switch typeOfSauce {
                case Sauce.kWhiteSauce :
                    switch priceRange {
                    case PriceRange.kUnderTwentyFive:
                        text = "We recommend the Vietti Barbera D’Asti Tre Vigne for $12.79. Ruby purple color with ripe red cherry aromas with hints of mineral and vanilla. A dry, medium bodied red wine with refreshing acidity (making it perfect to pair with food) and soft tannins, the Barbera d’Asti Tre Vigne is well balanced with good integration of oak, good complexity and a finish of more red cherries."
                        image = "asti.jpeg"
                    case PriceRange.kOverTwentyFive:
                        text = "We recommend the Vino Noceto Linsteadt Barbera for $34.00. The wine is full-bodied with good acid and structure, soft, silky tannins, and a long finish. It displays bright, lingering aromas of blueberry and raspberry, with a touch of earth, spice and vanilla."
                        image = "barbera.jpg"
                    default:
                        break
                    }
                case Sauce.kPestoSauce:
                    switch priceRange {
                    case PriceRange.kUnderTwentyFive:
                        text = "We recommend the Chateau St. Jean Flume Blanc, for $13.00.Fumé Blanc is extremely inviting with vivid aromas of peach, nectarine, fresh fig and a soft floral citrus note. The nose leads to luscious palate with flavors of red sweet apple, lemon citrus and a touch of honey. There is a core of vibrant lemon-lime acidity on the finish which makes the wine bright and very food friendly."
                        image = "flumeblanc2.jpg"
                    case PriceRange.kOverTwentyFive:
                        text = "We recommend the  Grgich Hills Estate Napa Valley Fumé Blanc, for $55.00. Relying on naturally-occurring yeasts, we fermented 80% of the grapes in 900-gallon French oak casks, called foudres, with the remainder in previously-used small French oak barrels. We then aged the wine six months on its lees (the spent yeast) in neutral barrels. The combination of the right clones and cool growing region produced juicy tropical fruit and lemongrass avors with a touch of minerality at the end of a long nish that are perfect with a wide range of food, including grilled sh, goat cheese salad and spicy Mexican or Asian cuisine. Enjoy! "
                        image = "fumeBlanc.jpg"
                    default:
                        break
                    }
                default:
                    switch priceRange {
                    case PriceRange.kUnderTwentyFive:
                        text = "We recommend the 2013 La Crema Sonoma Coast Pinot Noir for $19.99. This is an impressive wine at the price and production level, a great go-to for multiple occasions. It delivers earthy, candied strawberry around a light, bright core, remaining soft and smooth in texture and intensity, finishing with a tease of milk chocolate"
                        image = "pinotnoir.jpeg"
                    case PriceRange.kOverTwentyFive:
                        text = "We recommend the Robert Sinskey Vineyards Pinot Noir for $40. The translucent, ruby red color triggers symptoms of synesthesia as you think you can almost smell or taste the wine just by looking at its vibrant color. Aromas and flavors of cranberry and raspberry are followed by a cinnamon spice and a touch of bramble. The wine is vibrant, almost nervy as the flavors explode across the palate for a nice, long, mouthwatering finish. "
                        image = "pinotnoir2.jpg"
                    default:
                        break
                    }
                }
                
            case MainDish.kRice:
                switch priceRange {
                case PriceRange.kUnderTwentyFive:
                    text = "We recommend the Shingleback The Davey Estate Reserve Shiraz for $23.50. Deep garnet. Brooding blackberry, dark cherry and plum aromas are shot through with espresso chocolate notes. A compote of dark berries is encased within the chewy, robust tannin structure. A full-bodied wine with a long, lingering finish and the presence of character to accompany hearty, richly flavoured dishes. Source: shingleback.com"
                    image = "syrah1.jpg";
                case PriceRange.kOverTwentyFive:
                    text = "We recommend the Clarendon Hills Moritz Syrah for $44.99. Tall, dark and handsome, the Clarendon Hills Moritz Syrah presents itself in a seductive and brooding bouquet with notes of earth, spice and blueberry that intertwine with roasted meats and cocoa. The palate is balanced and intense with flavors of chocolate and dark fruit. The super-tight extract offers a journey of textures juxtaposed within savory complexities, leading to a blueberry and cream finish. Source: wine.com"
                    image = "syrah2.jpeg";
                default:
                    break
                }
                
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
                switch priceRange {
                case PriceRange.kUnderTwentyFive:
                    text = "We recommend the Shingleback The Davey Estate Reserve Shiraz for $23.50. Deep garnet. Brooding blackberry, dark cherry and plum aromas are shot through with espresso chocolate notes. A compote of dark berries is encased within the chewy, robust tannin structure. A full-bodied wine with a long, lingering finish and the presence of character to accompany hearty, richly flavoured dishes. Source: shingleback.com"
                    image = "syrah1.jpg";
                case PriceRange.kOverTwentyFive:
                    text = "We recommend the Clarendon Hills Moritz Syrah for $44.99. Tall, dark and handsome, the Clarendon Hills Moritz Syrah presents itself in a seductive and brooding bouquet with notes of earth, spice and blueberry that intertwine with roasted meats and cocoa. The palate is balanced and intense with flavors of chocolate and dark fruit. The super-tight extract offers a journey of textures juxtaposed within savory complexities, leading to a blueberry and cream finish. Source: wine.com"
                    image = "syrah2.jpeg";
                default:
                    break
                }
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
            switch typeOfDessert {
            case Dessert.kIceCream:
                switch priceRange {
                case PriceRange.kUnderTwentyFive:
                    text = "We recommend The Montes Classic Series Cabernet Sauvignon ($15) - because the ice cream should be sweeter than the wine. The delicate, sweet notes of the ice cream will be swept away by the bitterness and dryness of the tannins."
                    image = "MontesCabernet.jpg"
                case PriceRange.kOverTwentyFive:
                    text = "We recommend Franciscan Estate Cabernet Sauvignon 2013 ($29) - because the ice cream should be sweeter than the wine. The delicate, sweet notes of the ice cream will be swept away by the bitterness and dryness of the tannins."
                    image = "FranciscanEstateCabernet.png"
                default:
                    break
                }
                break
            case Dessert.kCake:
                switch priceRange {
                case PriceRange.kUnderTwentyFive:
                    text = "We recommend Au Contraire 2013 Chardonnay ($20). Since it is a full-bodied white wine with buttery and oaky flavours, it will balance out the sweetness of the cake"
                    image = "AuContraireChardonnay.jpg"
                    break;
                case PriceRange.kOverTwentyFive:
                    text = "We recommend Domaine Anderson 2012 Chardonnay ($43). Since it is is a full-bodied white wine with buttery and oaky flavours, it will balance out the sweetness of the cake"
                    image = "DomaineAndersonChardonnay.jpg"
                    break
                default:
                    break
                }
                break
            case Dessert.kCheese:
                switch priceRange {
                case PriceRange.kOverTwentyFive:
                    text = "We recommend Domaine Anderson 2012 Chardonnay ($43). The buttery and oaky flavours will go wonderfully with the savouriness of the cheese and without losing the sutble sweetness."
                    image = "DomaineAndersonChardonnay.jpg"
                    break;
                case PriceRange.kUnderTwentyFive:
                    text = "We recommend Au Contraire 2013 Chardonnay ($20). The buttery and oaky flavours will go wonderfully with the savouriness of the cheese and without losing the sutble sweetness."
                    image = "AuContraireChardonnay.jpg"
                    break
                default:
                    break
                }
                break
            case Dessert.kFruits:
                switch priceRange {
                case PriceRange.kUnderTwentyFive:
                    text = "We recommend Ametzoi Rubentis Txakolina 2014 ($19) - because it is unoaked - or subtly oaked - and fruity."
                    image = "AmetzoiRubentisTxakolina.jpg"
                    break;
                case PriceRange.kOverTwentyFive:
                    text = "We recommend Domaine Tempier Bandol Rose ($40) - it is the perfect wine for fruits : slightly effervescent, relatively low in alcohol at 11%, crisp, light, and refreshing. Source: thestreet.com"
                    image = "DomaineTempierBandolRose.jpg"
                    break
                default:
                    break
                }
                break
            default:
                break
            }
            
        default:
            break
        }
        
        wineDescriptionTextView.text = text;
        wineImageView.image = UIImage(named: image)
    }
    
}