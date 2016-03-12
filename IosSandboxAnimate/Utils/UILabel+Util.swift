//
//  UILabel+Util.swift
//  e-park
//
//  Created by KaiKeima on 2016/01/31.
//  Copyright © 2016年 OHAKO,inc. All rights reserved.
//

import UIKit

extension UILabel {

    func setSelfAttributedText(var text: String?) {
        if text?.characters.count == 0 {
            text = "　"
        }
        let attributes = attributedText?.attributesAtIndex(0, effectiveRange: nil)
        attributedText = NSAttributedString(string: text ?? "　", attributes: attributes)
    }

}
