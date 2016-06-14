//
//  LoginViewController.swift
//  Tumblr1
//
//  Created by Sumit Kohli on 6/14/16.
//  Copyright © 2016 Sumit Kohli. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
    @IBAction func onCancelTab(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
