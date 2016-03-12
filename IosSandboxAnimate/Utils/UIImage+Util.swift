//
//  UIImage+Util.swift
//  e-park
//
//  Created by KaiKeima on 2015/12/21.
//  Copyright © 2015年 OHAKO,inc. All rights reserved.
//

import UIKit

extension UIImage {
    class func colorImage(color: UIColor, size: CGSize) -> UIImage {
        UIGraphicsBeginImageContext(size)
        
        let rect = CGRect(origin: CGPointZero, size: size)
        let context = UIGraphicsGetCurrentContext()
        CGContextSetFillColorWithColor(context, color.CGColor)
        CGContextFillRect(context, rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        return image
    }
}
