//
//  ComposeViewController.swift
//  Tumblr1
//
//  Created by Sumit Kohli on 6/10/16.
//  Copyright © 2016 Sumit Kohli. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var chatIconImageView: UIImageView!
    @IBOutlet weak var linkIconImageView: UIImageView!
    @IBOutlet weak var photoIconImageView: UIImageView!
    @IBOutlet weak var quoteIconImageView: UIImageView!
    @IBOutlet weak var textIconImageView: UIImageView!
    @IBOutlet weak var videoIconImageView: UIImageView!
    
    var chatOriginalY: CGFloat!
    var textOriginalY: CGFloat!
    var photoOriginalY: CGFloat!
    var quoteOriginalY: CGFloat!
    var videoOriginalY: CGFloat!
    var linkOriginalY: CGFloat!
    var moveOutY: CGFloat!
    
    
    
    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(animated)
        
        chatOriginalY = chatIconImageView.frame.origin.y
        textOriginalY = textIconImageView.frame.origin.y
        photoOriginalY = photoIconImageView.frame.origin.y
        quoteOriginalY = quoteIconImageView.frame.origin.y
        videoOriginalY = videoIconImageView.frame.origin.y
        linkOriginalY = linkIconImageView.frame.origin.y
        
        
        textIconImageView.frame.origin = CGPoint (x: textIconImageView.frame.origin.x, y: 600);
        chatIconImageView.frame.origin = CGPoint (x: chatIconImageView.frame.origin.x, y: 600);
        photoIconImageView.frame.origin = CGPoint (x: photoIconImageView.frame.origin.x, y: 600);
        quoteIconImageView.frame.origin = CGPoint (x: quoteIconImageView.frame.origin.x, y: 600);
        linkIconImageView.frame.origin = CGPoint (x: linkIconImageView.frame.origin.x, y: 600);
        videoIconImageView.frame.origin = CGPoint (x: videoIconImageView.frame.origin.x, y: 600);
       
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        moveOutY = -600
        UIView.animateWithDuration(0.55) { () -> Void in
            
            self.textIconImageView.frame.origin.y = self.textOriginalY
            self.chatIconImageView.frame.origin.y = self.chatOriginalY
            self.photoIconImageView.frame.origin.y = self.photoOriginalY
            self.quoteIconImageView.frame.origin.y = self.quoteOriginalY
            self.linkIconImageView.frame.origin.y = self.linkOriginalY
            self.videoIconImageView.frame.origin.y = self.videoOriginalY
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func clickedNeverMindButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    

}
