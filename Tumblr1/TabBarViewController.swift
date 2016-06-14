//
//  TabBarViewController.swift
//  Tumblr1
//
//  Created by Sumit Kohli on 6/10/16.
//  Copyright © 2016 Sumit Kohli. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    
    //Button Array
    @IBOutlet var buttons: [UIButton]!
    
    //Variable for Array ViewControllers
    var viewControllers: [UIViewController]!
    //Variables for View Controller
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    //Button Selected array index
    var selectedIndex: Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       //trendingScrollView.contentSize = trendingImageView.image!.size

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        viewControllers = [homeViewController, searchViewController, composeViewController, accountViewController, trendingViewController]

        
        //Home View Controller
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        addChildViewController(homeViewController)
        contentView.addSubview(homeViewController.view)
        homeViewController.didMoveToParentViewController(self)
        
        // Search View Controller
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        addChildViewController(searchViewController)
        contentView.addSubview(searchViewController.view)
        searchViewController.didMoveToParentViewController(self)
        
        //Compose View Controller
        composeViewController = storyboard.instantiateViewControllerWithIdentifier("ComposeViewController")
        addChildViewController(composeViewController)
        contentView.addSubview(composeViewController.view)
        composeViewController.didMoveToParentViewController(self)
        
        // Account View Controller
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        addChildViewController(accountViewController)
        contentView.addSubview(accountViewController.view)
        accountViewController.didMoveToParentViewController(self)
        
        //Trending View Controller
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        addChildViewController(trendingViewController)
        contentView.addSubview(trendingViewController.view)
        trendingViewController.didMoveToParentViewController(self)
        
        viewControllers = [homeViewController, searchViewController, composeViewController, accountViewController, trendingViewController]
        
        buttons[selectedIndex].selected = true
        didPressTab(buttons[selectedIndex])
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func didPressTab(sender: UIButton) {
        
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        buttons[previousIndex].selected = false
        let previousVC = viewControllers[previousIndex]
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        sender.selected = true
        let vc = viewControllers[selectedIndex]
        addChildViewController(vc)
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        vc.didMoveToParentViewController(self)
        
        
    }
    

}
