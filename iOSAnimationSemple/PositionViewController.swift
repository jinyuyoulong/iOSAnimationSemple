//
//  PositionViewController.swift
//  iOSAnimationSemple
//
//  Created by fans on 15/6/19.
//  Copyright (c) 2015年 fans. All rights reserved.
//

import UIKit

class PositionViewController: UIViewController {
    @IBOutlet weak var blueSquare: UIView!

    @IBOutlet weak var redSuqare: UIView!
    
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
        
        UIView.animateWithDuration(1, animations: { 
            self.blueSquare.center.x = self.view.bounds.width - self.blueSquare.center.x
            
        })
        
        UIView.animateWithDuration(1, delay: 0.5, options: UIViewAnimationOptions.TransitionNone, animations: {
            self.redSuqare.center.y = self.view.bounds.height - self.redSuqare.center.y
            
        }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 1, options: UIViewAnimationOptions.TransitionNone, animations: {
            self.greenSquare.center.x = self.view.bounds.width - self.greenSquare.center.x
            self.greenSquare.center.y = self.view.bounds.height - self.greenSquare.center.y
            
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
