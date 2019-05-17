//
//  ViewController.swift
//  TableViewSample
//
//  Created by 飯島大樹 on 2019/05/16.
//  Copyright © 2019 Daiki Iijima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}


    extension ViewController : UITableViewDataSource
    {
        // cellを返す。
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell()
            cell.textLabel?.text = "section:[\(indexPath.section)], row:[\(indexPath.row)]"
            return cell
        }
        
        //セルの数をいくつにするか。
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 100
        }
    }


