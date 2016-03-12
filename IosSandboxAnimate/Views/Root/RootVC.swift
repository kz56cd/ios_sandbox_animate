//
//  RootVC.swift
//  IosSandboxAnimate
//
//  Created by msano on 2016/03/12.
//  Copyright © 2016年 msano. All rights reserved.
//

import UIKit

class RootVC: ViewController {

    private let CELL_IDENTIFIER_DEFAULT = "Cell"
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initTableView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func initTableView() {
        table?.registerClass(UITableViewCell.self, forCellReuseIdentifier: CELL_IDENTIFIER_DEFAULT)
    }
    
    func makeCell(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "aaaaaaaaaaaaa"
        return cell
    }
}

extension RootVC: UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return self.makeCell(tableView, cellForRowAtIndexPath: indexPath)
    }
}

extension RootVC: UITableViewDelegate {
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("tapped cell.")
    }
}

extension RootVC: UIScrollViewDelegate {
    func scrollViewDidScroll(scrollView: UIScrollView) {
        // スタブ
    }
}
