//
//  A02VC.swift
//  IosSandboxAnimate
//
//  Created by msano on 2016/03/12.
//  Copyright © 2016年 msano. All rights reserved.
//

import UIKit

class A02VC: ViewController {

    @IBOutlet weak var animationView: UIView!
    
    var test : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startCornerRadiusAnimation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func startCornerRadiusAnimation()
    {
        let cornerRadiusAnimation = CABasicAnimation(keyPath: "cornerRadius")
        
        // cornerRadius を 0 -> 100 に変化させるよう設定
        cornerRadiusAnimation.fromValue = 0
        cornerRadiusAnimation.toValue = 100
        
        // アニメーション
        cornerRadiusAnimation.duration = 0.2
        
        // アニメーションが終了した時の状態を維持する
        cornerRadiusAnimation.removedOnCompletion = false
        cornerRadiusAnimation.fillMode = kCAFillModeForwards
        cornerRadiusAnimation.repeatCount = 5
        cornerRadiusAnimation.delegate = self
        animationView.layer.addAnimation(cornerRadiusAnimation, forKey: "cornerRadiusAnimation")
    }
    
    override func animationDidStop(anim: CAAnimation, finished flag: Bool) {
        UIView.animateWithDuration(0.6,
            delay: 0.0,
            options: UIViewAnimationOptions.CurveEaseOut,
            animations: { () -> Void in
                self.view.backgroundColor = UIColor.redColor()
                self.animationView.backgroundColor = UIColor.whiteColor()
            }, completion: { (fin: Bool) -> Void in
                
        })
    }
}

extension A02VC : StoryboardInstantiable {}