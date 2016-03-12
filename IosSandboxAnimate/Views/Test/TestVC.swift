//
//  TestVC.swift
//  IosSandboxAnimate
//
//  Created by msano on 2016/03/12.
//  Copyright © 2016年 msano. All rights reserved.
//

import UIKit

class TestVC: ViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        beganAnimate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   
    
    private func beganAnimate() {
        let moveToCenter = CABasicAnimation(keyPath: "position.x")
        moveToCenter.fromValue = -view.bounds.size.width/2
        moveToCenter.toValue = view.bounds.size.width/2
        moveToCenter.duration = 2.0
        imageView.layer.addAnimation(moveToCenter, forKey: nil)
    }

}

extension TestVC: StoryboardInstantiable {}
