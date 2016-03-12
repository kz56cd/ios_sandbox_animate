//
//  RootVC.swift
//  IosSandboxAnimate
//
//  Created by msano on 2016/03/12.
//  Copyright © 2016年 msano. All rights reserved.
//

import UIKit

class RootVC: ViewController {

    private let CELL_IDENTIFIER_ROOT = "RootCell"
    
    @IBOutlet weak var table: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
        initTableView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func initView() {
        title = "Animate"
    }
    
    private func initTableView() {
        table?.registerNib(UINib(nibName: CELL_IDENTIFIER_ROOT, bundle:nil), forCellReuseIdentifier: CELL_IDENTIFIER_ROOT)
    }
    
    func makeCell(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(CELL_IDENTIFIER_ROOT, forIndexPath: indexPath) as! RootCell
        cell.fillWithCell(indexPath.row, title: indexPath.row == 0 ? "test animate" : "")
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
        if indexPath.row == 0 {
            guard let vc:TestVC = TestVC.instantiate() else {
                return
            }
            vc.viewName = "test animate"
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

extension RootVC: UIScrollViewDelegate {
    func scrollViewDidScroll(scrollView: UIScrollView) {
        // スタブ
    }
}
