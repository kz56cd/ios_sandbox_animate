//
//  BottomShadowButton.swift
//  e-park
//
//  Created by KaiKeima on 2015/12/22.
//  Copyright © 2015年 OHAKO,inc. All rights reserved.
//

import UIKit

@IBDesignable class BottomShadowButton: UIButton {
    
    override func drawRect(rect: CGRect) {
        
        self.layer.backgroundColor = self.backgroundColor?.CGColor
        self.backgroundColor = UIColor.clearColor()
        self.layer.cornerRadius = 4.0
        self.layer.shadowColor = self.backgroundColor!.transitionColor(nextColor: UIColor.blackColor(), portion: 0.5).CGColor
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
        self.layer.shadowOffset = CGSizeMake(0, 2.0)
        
        
//        self.clipsToBounds = true
//
        super.drawRect(rect)
    }

}
