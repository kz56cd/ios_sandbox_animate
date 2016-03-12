//
//  StoryboardInstantiable.swift
//  e-park
//
//  Created by Yoshikuni Kato on 2015/09/16.
//  Copyright © 2015年 Ohako Inc. All rights reserved.
//

import Foundation
import UIKit

protocol StoryboardInstantiable {}

extension StoryboardInstantiable {
    static func instantiate() -> Self {
        let storyBoard = UIStoryboard(name: ClassNameFromStoryboardInstantiable(Self), bundle: nil)
        return storyBoard.instantiateInitialViewController() as! Self
    }
}

func ClassNameFromStoryboardInstantiable(type: StoryboardInstantiable.Type) -> String {
    let classString = NSStringFromClass(type as! AnyClass)
    return classString.componentsSeparatedByString(".").last!
}
