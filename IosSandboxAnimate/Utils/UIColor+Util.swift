//
//  UIColor+Util.swift
//  e-park
//
//  Created by KaiKeima on 2015/12/21.
//  Copyright © 2015年 OHAKO,inc. All rights reserved.
//

import UIKit

extension UIColor {
    class func color(hex: Int, alpha: Double = 1.0) -> UIColor {
        let red = Double((hex & 0xFF0000) >> 16) / 255.0
        let green = Double((hex & 0xFF00) >> 8) / 255.0
        let blue = Double((hex & 0xFF)) / 255.0
        
        return UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: CGFloat(alpha))
    }
    
    class func hexStr (var hexStr : NSString, alpha : CGFloat) -> UIColor {
        hexStr = hexStr.stringByReplacingOccurrencesOfString("#", withString: "")
        let scanner = NSScanner(string: hexStr as String)
        var color: UInt32 = 0
        if scanner.scanHexInt(&color) {
            let r = CGFloat((color & 0xFF0000) >> 16) / 255.0
            let g = CGFloat((color & 0x00FF00) >> 8) / 255.0
            let b = CGFloat((color & 0x0000FF) ) / 255.0
            return UIColor(red: r, green: g, blue: b, alpha: alpha)
        }else {
            return UIColor.whiteColor()
        }
    }
    
    class func mainColor(alpha: Double = 1.0) -> UIColor {
        return UIColor.color(0x1db0d0, alpha: alpha)
    }
    
    class func sectionColor(alpha: Double = 1.0) -> UIColor {
        return UIColor.color(0xeeeef2, alpha: alpha)
    }
    
    class func textColor(alpha: Double = 1.0) -> UIColor {
        return UIColor.color(0x333333, alpha: alpha)
    }
    
    class func highlightedColor(alpha: Double = 1.0) -> UIColor {
        return UIColor.color(0xf4f4f8, alpha: alpha)
    }
    
    func transitionColor(nextColor nextColor: UIColor, portion: CGFloat) -> UIColor {
        
        if portion >= 1.0 {
            return nextColor
        }
        if portion <= 0.0 {
            return self
        }
        
        var preRed = CGFloat(0.0)
        var preGreen = CGFloat(0.0)
        var preBlue = CGFloat(0.0)
        var preAlpha = CGFloat(0.0)
        self.getRed(&preRed, green: &preGreen, blue: &preBlue, alpha: &preAlpha)
        
        var nextRed = CGFloat(0.0)
        var nextGreen = CGFloat(0.0)
        var nextBlue = CGFloat(0.0)
        var nextAlpha = CGFloat(0.0)
        nextColor.getRed(&nextRed, green: &nextGreen, blue: &nextBlue, alpha: &nextAlpha)
        
        let currentRed = ( 1.0 - portion) * preRed + portion * nextRed
        let currentGreen = ( 1.0 - portion) * preGreen + portion * nextGreen
        let currentBlue = ( 1.0 - portion) * preBlue + portion * nextBlue
        let currentAlpha = ( 1.0 - portion) * preAlpha + portion * nextAlpha
        
        return UIColor(red: currentRed, green: currentGreen, blue: currentBlue, alpha: currentAlpha)
    }
    
}