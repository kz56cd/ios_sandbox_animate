//
//  CustomView.swift
//  Dear
//
//  Created by Yoshikuni Kato on 2015/09/14.
//  Copyright © 2015年 Ohako Inc. All rights reserved.
//

import UIKit

@IBDesignable class CustomView: UIView {

    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius).CGPath
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 0.0 {
        didSet {
            layer.shadowRadius = shadowRadius
        }
    }
    
    @IBInspectable var shadowColor: UIColor? = nil {
        didSet {
            layer.shadowColor = shadowColor?.CGColor
        }
    }
    
    @IBInspectable var shadowOffset: CGSize = CGSizeZero {
        didSet {
            layer.shadowOffset = shadowOffset
        }
    }
    @IBInspectable var shadowOpacity: Float = 0.0 {
        didSet {
            layer.shadowOpacity = shadowOpacity
            if shadowOpacity > 0.0 {
                layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius).CGPath
                layer.shouldRasterize = true
                layer.rasterizationScale = UIScreen.mainScreen().scale
            }
        }
    }
    
    @IBInspectable var borderColor: UIColor? = nil {
        didSet {
            layer.borderColor = borderColor?.CGColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    override var bounds: CGRect {
        didSet {
            layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius).CGPath
        }
    }
}
