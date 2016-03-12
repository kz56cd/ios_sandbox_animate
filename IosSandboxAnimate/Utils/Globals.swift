//
//  Globals.swift
//  e-park
//
//  Created by KaiKeima on 2015/12/21.
//  Copyright © 2015年 OHAKO,inc. All rights reserved.
//

import UIKit

var isSearchedStoresOnce = false // 起動後薬局検索したか / 否か

//func UIColorFromRGB(rgbValue: UInt) -> UIColor {
//    return UIColor(
//        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
//        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
//        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
//        alpha: CGFloat(1.0)
//    )
//}
//
//var tableBGColor = UIColorFromRGB(0xffeeee)
//var keyColor = UIColorFromRGB(0xff7487)
//
//var cellSelectedColor = UIColorFromRGB(0xD0D0D0)
//let errorDomain = "com.dear.dear"

// !!!: this method works just for global classes. not for nested classes.
func ClassNameFromAnyClass(type: AnyClass) -> String {
    let classString = NSStringFromClass(type)
    return classString.componentsSeparatedByString(".").last!
}

func delay(delay:Double, closure:()->()) {
    dispatch_after(
        dispatch_time(
            DISPATCH_TIME_NOW,
            Int64(delay * Double(NSEC_PER_SEC))
        ),
        dispatch_get_main_queue(), closure)
}

//let kDefaultUserIconName = "user_icon_default"