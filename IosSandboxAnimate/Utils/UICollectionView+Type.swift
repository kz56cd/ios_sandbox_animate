//
//  UICollectionView+Type.swift
//  e-park
//
//  Created by Yoshikuni Kato on 2015/09/11.
//  Copyright © 2015年 Ohako Inc. All rights reserved.
//

import UIKit

extension UICollectionView {
    func registerNibForCellWithType<T: UICollectionViewCell>(type: T.Type) {
        let className = ClassNameFromAnyClass(T)
        let nib = UINib(nibName: className, bundle: nil)
        registerNib(nib, forCellWithReuseIdentifier: className)
    }
    
    func registerClassForCellWithType<T: UICollectionViewCell>(type: T.Type) {
        let className = ClassNameFromAnyClass(T)
        registerClass(T.self, forCellWithReuseIdentifier: className)
    }
    
    func dequeueReusableCellWithType<T: UICollectionViewCell>(
        type: T.Type,
        forIndexPath indexPath: NSIndexPath) -> T {
            return dequeueReusableCellWithReuseIdentifier(
                ClassNameFromAnyClass(T),
                forIndexPath: indexPath) as! T
    }
}

