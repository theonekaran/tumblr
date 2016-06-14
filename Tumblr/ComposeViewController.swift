//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Karan Khurana on 6/13/16.
//  Copyright © 2016 Karan Khurana. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    @IBOutlet weak var neverButton: UIButton!
    
    var topCenter: CGFloat!
    var bottomCenter: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topCenter = textButton.center.y
        bottomCenter = linkButton.center.y

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        textButton.center.y = 600
        photoButton.center.y = 600
        quoteButton.center.y = 600
        linkButton.center.y = 600
        chatButton.center.y = 600
        videoButton.center.y = 600
        
    }
    
    override func viewDidAppear(animated: Bool) {
        self.photoButton.center.y = topCenter
        UIView.animateWithDuration(0.2, animations: {
            self.textButton.center.y = self.topCenter
            self.videoButton.center.y = self.bottomCenter
            }) { (Bool) in
                UIView.animateWithDuration(0.15, animations: {
                    self.linkButton.center.y = self.bottomCenter
                    }, completion: { (Bool) in
                        UIView.animateWithDuration(0.05, animations: {
                            self.quoteButton.center.y = self.topCenter
                            self.chatButton.center.y = self.bottomCenter
                        })
                })
        }
    }
    
    @IBAction func didPressNevermind(sender: AnyObject) {
        self.photoButton.center.y = -700
        UIView.animateWithDuration(0.2, animations: {
            self.textButton.center.y = -700
            self.videoButton.center.y = -700
        }) { (Bool) in
            UIView.animateWithDuration(0.15, animations: {
                self.linkButton.center.y = -700
                }, completion: { (Bool) in
                    UIView.animateWithDuration(0.05, animations: {
                        self.quoteButton.center.y = -700
                        self.chatButton.center.y = -700
                        }, completion: { (Bool) in
                            self.dismissViewControllerAnimated(true, completion: nil)
                    })
            })
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
