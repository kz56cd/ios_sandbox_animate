//
//  RootVC.swift
//  IosSandboxAnimate
//
//  Created by msano on 2016/03/12.
//  Copyright © 2016年 msano. All rights reserved.
//

import UIKit

class RootVC: ViewController {

    private let VC_NAME              = "Animate"
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
        title = VC_NAME
    }
    
    private func initTableView() {
        table?.registerNib(UINib(nibName: CELL_IDENTIFIER_ROOT, bundle:nil), forCellReuseIdentifier: CELL_IDENTIFIER_ROOT)
    }
    
    private func makeCell(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(CELL_IDENTIFIER_ROOT, forIndexPath: indexPath) as! RootCell
        cell.fillWithCell(indexPath.row + 1, title: checkhaveVCName(indexPath.row) ? nameList[indexPath.row] : "")
        return cell
    }
    
    private func moveVC(indexPath: NSIndexPath) {
        let row                = indexPath.row
        var vc:ViewController? = nil
        
        switch row + 1 {
        case 1:
            vc = A01VC.instantiate()
        case 2:
            vc = A02VC.instantiate()
        default:
            break
        }
        if let vc = vc {
            vc.viewName = checkhaveVCName(row) ? nameList[row] : ""
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    private let nameList = [
        "test animate(image)",
        "animate view"
    ]
    
    private func checkhaveVCName(num: Int) -> Bool {
        return num < nameList.count
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
        if checkhaveVCName(indexPath.row) {
            moveVC(indexPath)
        }
    }
}

extension RootVC: UIScrollViewDelegate {
    func scrollViewDidScroll(scrollView: UIScrollView) {
        // スタブ
    }
}
