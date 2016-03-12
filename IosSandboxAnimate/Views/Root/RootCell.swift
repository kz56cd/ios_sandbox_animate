//
//  RootCell.swift
//  IosSandboxAnimate
//
//  Created by msano on 2016/03/12.
//  Copyright © 2016年 msano. All rights reserved.
//

import UIKit

class RootCell: UITableViewCell {

    @IBOutlet private weak var cellNumLabel: UILabel!
    @IBOutlet private weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func fillWithCell(num: Int, title: String) {
        let numStr = "\(num)"
        cellNumLabel.text = numStr.characters.count == 1 ? "0\(numStr)" : numStr
        titleLabel.text   = title
    }
}
