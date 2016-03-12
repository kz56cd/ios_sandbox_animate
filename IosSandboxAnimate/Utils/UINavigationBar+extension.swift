//
//  UINavigationBar+extension.swift
//  e-park
//
//  Created by KaiKeima on 2015/12/21.
//  Copyright © 2015年 OHAKO,inc. All rights reserved.
//

import UIKit

extension UINavigationBar {
    
    func removeShadow() {
        if let view = removeShadowFromView(self) {
            view.removeFromSuperview()
        }
    }
    func removeShadowFromView(view: UIView) -> UIImageView? {
        if (view.isKindOfClass(UIImageView) && view.bounds.size.height <= 1) {
            return view as? UIImageView
        }
        for subView in view.subviews {
            if let imageView = removeShadowFromView(subView as UIView) {
                return imageView
            }
        }
        return nil
    }
}