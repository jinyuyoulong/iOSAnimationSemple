//
//  SpringViewController.swift
//  iOSAnimationSemple
//
//  Created by fans on 15/7/1.
//  Copyright (c) 2015年 fans. All rights reserved.
//

import UIKit

class SpringViewController: UIViewController {

    @IBOutlet weak var blueSuqare: UIView!
    @IBOutlet weak var redSquare: UIView!
    @IBOutlet weak var greenSquare: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(3, animations: {
            self.blueSuqare.center.x = self.view.bounds.width - self.blueSuqare.center.x/2
        })
        // damping 阻尼
        // spring 弹簧
        // velocity 速度
        // initialSpringVelocity 初始弹簧速度
        UIView.animateWithDuration(3, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: UIViewAnimationOptions.TransitionNone, animations: {
            self.redSquare.center.x = self.view.bounds.width - self.redSquare.center.x/2
        }, completion: nil)
        
        UIView.animateWithDuration(3, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 3, options: UIViewAnimationOptions.TransitionNone, animations: {
            self.greenSquare.center.x = self.view.bounds.width - self.greenSquare.center.x/2
        }, completion: nil)
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
