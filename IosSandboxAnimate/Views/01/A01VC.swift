//
//  A01VC.swift
//  IosSandboxAnimate
//
//  Created by msano on 2016/03/12.
//  Copyright © 2016年 msano. All rights reserved.
//

import UIKit

class A01VC: ViewController {
    
    @IBOutlet weak var imageView: UIImageView!
//    var viewName : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(animated: Bool) {
        beganAnimate()
    }
    
    
    // MARK: private
    
    
    private func initView() {
        title = viewName
    }
    
    private func beganAnimate() {
        imageView.hidden = false
        let moveToCenter = CABasicAnimation(keyPath: "position.x")
        moveToCenter.fromValue = -view.bounds.size.width/2
        moveToCenter.toValue = view.bounds.size.width/2
        moveToCenter.duration = 0.5
        imageView.layer.addAnimation(moveToCenter, forKey: nil)
    }
}

extension A01VC : StoryboardInstantiable {}
