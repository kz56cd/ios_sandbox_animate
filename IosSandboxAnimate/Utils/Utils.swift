//
//  Utils.swift
//  e-park
//
//  Created by msano on 2016/02/11.
//  Copyright © 2016年 OHAKO,inc. All rights reserved.
//

import Foundation


class Utils {
    
    static let sharedInstance = Utils()
    
    // DocumentPathログ表示
    func logDocumentPath() {
        print("DocumentPath :\n\n\(NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] )\n\n", terminator: "\n")
    }

    
    func generateFilePathWithName(fileName fileName: String, extention: String) -> NSURL {
//        let doc = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as String
        let writePath = NSURL(fileURLWithPath: NSTemporaryDirectory()).URLByAppendingPathComponent("\(fileName).\(extention)") // tmp配下
        return writePath
    }
    
    func deleteEndChars(targetStr: String, deleteNum: Int) -> String {
        // 末尾の改行除去
        let replaceStartIndex = targetStr.startIndex.advancedBy(targetStr.characters.count - deleteNum)
        let replaceEndIndex = replaceStartIndex.advancedBy(deleteNum)
        let str = targetStr.stringByReplacingCharactersInRange(Range(start: replaceStartIndex, end: replaceEndIndex), withString: "")
        return str
    }
}