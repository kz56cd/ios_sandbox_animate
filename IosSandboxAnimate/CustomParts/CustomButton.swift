//
//  CustomButton.swift
//  e-park
//
//  Created by Yoshikuni Kato on 2015/09/15.
//  Copyright © 2015年 Ohako Inc. All rights reserved.
//

import UIKit

@IBDesignable class CustomButton: UIButton {
    
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
    
    @IBInspectable var bounceTouch: Bool = false
    @IBInspectable var parentBounceTouch: Bool = false
    @IBInspectable var bounceScale: CGFloat = 0.96
    @IBInspectable var movingTouch: Bool = false
    @IBInspectable var adjustParent: Bool = false
    @IBInspectable var movingPoint: CGPoint = CGPointMake(0, 2)
    
    var normalBackgroundColor: UIColor? = nil
    @IBInspectable var highlightedBackgroundColor: UIColor? = nil {
        didSet {
            normalBackgroundColor = backgroundColor
        }
    }
    
    override var highlighted: Bool {
        didSet {
            movingTouchAnimation(highlighted)
            backgroundColorAnimation(highlighted)
        }
    }
    
    private func movingTouchAnimation(highlighted: Bool) {
        
        let position = highlighted ? movingPoint : CGPointZero
        
        if movingTouch {
            
            let target: UIView = adjustParent ? superview! : self
            
            UIView.animateWithDuration(
                0.1,
                delay: 0.0,
                options: .CurveLinear,
                animations: { () -> Void in
                    target.transform = CGAffineTransformMakeTranslation(position.x, position.y)
                },
                completion: nil
            )
            
        }
        
    }
    
    private func backgroundColorAnimation(highlighted: Bool) {
        
        guard let _ = highlightedBackgroundColor else {
            return
        }
        
        let color = highlighted ? highlightedBackgroundColor : normalBackgroundColor
        
        UIView.animateWithDuration(
            0.1,
            delay: 0.0,
            options: .CurveLinear,
            animations: { () -> Void in
                self.backgroundColor = color
            },
            completion: nil
        )
    }
    
    
    
    override var bounds: CGRect {
        didSet {
            layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius).CGPath
        }
    }

}
