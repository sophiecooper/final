//
//  PageItemController.swift
//  WineMeUp
//
//  Created by loretta chan on 4/18/16.
//  Copyright © 2016 loretta chan. All rights reserved.
//

import UIKit
import Foundation

class PageItemController: UIViewController {
    
    // MARK: - Variables
    var itemIndex: Int!
    var titleName: String!
    
    
    @IBOutlet var titleLabel: UILabel!
    
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleLabel.text = titleName;
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
        let pageVC = self.parentViewController as! UIPageViewController
        let parentVC = self.parentViewController?.parentViewController as! ViewController
        if (itemIndex < parentVC.titles.count-1) {
            displayNextViewController(pageVC, parentVC: parentVC)
        } else if (itemIndex == parentVC.titles.count-1) {
            self.performSegueWithIdentifier("displayResultSegue", sender: self)
        }
        
    }
    
    
    func displayNextViewController(pageVC: UIPageViewController, parentVC: ViewController) {
        if (itemIndex < parentVC.titles.count-1) {
            let startingViewControllers: NSArray = [parentVC.getItemController(itemIndex+1) as! UIViewController]
            pageVC.setViewControllers(startingViewControllers as! [UIViewController], direction: UIPageViewControllerNavigationDirection.Forward, animated: true, completion: nil)
        }
        parentVC.currentIndex = itemIndex+1
    }
}
