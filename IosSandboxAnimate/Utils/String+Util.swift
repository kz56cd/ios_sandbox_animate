//
//  String+Util.swift
//  e-park
//
//  Created by KaiKeima on 2/14/16.
//  Copyright © 2016 OHAKO,inc. All rights reserved.
//

import UIKit

extension String {
    
    func replace(before: String, to after: String) -> String? {
        return self.stringByReplacingOccurrencesOfString(before, withString: after)
    }
    
    func getUIColor() -> UIColor? {
        return UIColor.hexStr(self, alpha: 1.0)
    }
    
    func heightWithConstrainedWidth(width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: 200.0)
        let boundingBox = self.boundingRectWithSize(constraintRect, options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: [NSFontAttributeName: font], context: nil)
        return boundingBox.height
    }
    
}
