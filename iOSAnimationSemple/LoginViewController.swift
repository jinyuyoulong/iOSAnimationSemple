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

    @IBOutlet weak var login: UIButton!
    let spnner = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.White)
    
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
        
        let userImg = UIImageView(image: UIImage(named: "user_male"))
        userImg.frame.origin = CGPointMake(5, 10)
        self.username.addSubview(userImg)
        let passwd = UIImageView(image: UIImage(named: "password"))
        passwd.frame.origin = CGPointMake(5, 10)
        self.password.addSubview(passwd)
        self.password.center.x -= self.view.bounds.width
        self.username.center.x -= self.view.bounds.width
        self.login.center.x -= self.view.bounds.width
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
        }, completion:nil)
        UIView.animateWithDuration(0.5) { () -> Void in
            self.username.center.x += self.view.bounds.width
        }
        UIView.animateWithDuration(0.6) { () -> Void in
            self.password.center.x += self.view.bounds.width
        }
        UIView.animateWithDuration(0.7) { () -> Void in
            self.login.center.x += self.view.bounds.width
        }
    }

    @IBAction func loginTapped(sender: AnyObject) {
        self.login.addSubview(self.spnner)
        self.spnner.frame.origin = CGPointMake(5, 20)
        self.spnner.startAnimating()
        self.login.center.x -= 30
        UIView.animateWithDuration(1.5, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 0, options: UIViewAnimationOptions.TransitionNone, animations: { () -> Void in
            self.login.center.x += 30
            }) { _ in
                self.login.center.y += 80
                self.spnner.removeFromSuperview()
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
