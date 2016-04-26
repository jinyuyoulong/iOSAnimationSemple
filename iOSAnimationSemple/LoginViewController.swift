//
//  LoginViewController.swift
//  iOSAnimationSemple
//
//  Created by fans on 16/4/6.
//  Copyright © 2016年 fans. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var bubble1: UIImageView!
    @IBOutlet weak var bubble2: UIImageView!
    @IBOutlet weak var bubble3: UIImageView!
    @IBOutlet weak var bubble4: UIImageView!
    @IBOutlet weak var dot: UIImageView!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.bubble1.transform = CGAffineTransformMakeScale(0, 0)
        self.bubble2.transform = CGAffineTransformMakeScale(0, 0)
        self.bubble3.transform = CGAffineTransformMakeScale(0, 0)
        self.bubble4.transform = CGAffineTransformMakeScale(0, 0)

        self.logo.center.x -= self.view.bounds.width
        self.dot.center.x -= self.view.bounds.width/3

        let userPaddingView = UIView(frame: CGRectMake(0, 0, 44, self.username.frame.height))
        self.username.leftView = userPaddingView
        self.username.leftViewMode = .Always

        let passWPaddingView = UIView(frame: CGRectMake(0, 0, 44, self.username.frame.height))
        self.password.leftView = passWPaddingView
        self.password.leftViewMode = .Always
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: UIViewAnimationOptions.TransitionNone, animations: {
            self.bubble1.transform = CGAffineTransformMakeScale(1, 1)
            self.bubble3.transform = CGAffineTransformMakeScale(1, 1)
            }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.1, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: UIViewAnimationOptions.TransitionNone, animations: {
            self.bubble2.transform = CGAffineTransformMakeScale(1, 1)
            self.bubble4.transform = CGAffineTransformMakeScale(1, 1)
            }, completion: nil)
        UIView.animateWithDuration(0.5, delay: 0.3, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: UIViewAnimationOptions.TransitionNone, animations: {
            self.logo.center.x += self.view.bounds.width
            }, completion: nil)
        UIView.animateWithDuration(3, delay: 0.4, usingSpringWithDamping: 0.1, initialSpringVelocity:1 , options: UIViewAnimationOptions.TransitionNone, animations: {
            self.dot.center.x += self.view.bounds.width/3
            }, completion: nil)

        //

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
