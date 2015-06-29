//
//  RotationViewController.swift
//  iOSAnimationSemple
//
//  Created by fans on 15/6/24.
//  Copyright (c) 2015年 fans. All rights reserved.
//

import UIKit

class RotationViewController: UIViewController {

    @IBOutlet weak var blueSquare: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func spin(){
        UIView.animateWithDuration(1, delay: 0, options: .CurveLinear, animations: {
            self.blueSquare.transform = CGAffineTransformRotate(self.blueSquare.transform, CGFloat(M_PI))
            }, completion:{(finished) -> Void in
                self.spin()
                
        } )
    }

    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        self.spin()
        
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
