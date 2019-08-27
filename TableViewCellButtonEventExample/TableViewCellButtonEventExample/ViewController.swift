//
//  ViewController.swift
//  TableViewCellButtonEventExample
//
//  Created by 박성원 on 27/08/2019.
//  Copyright © 2019 sungwon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(UINib.init(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        self.tableView.delegate = self
        self.tableView.dataSource = self    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.button1Event = {(button: UIButton) -> () in
            print("touch button1")
        }
        
        cell.button2Event = {(button: UIButton) -> () in
            print("touch button2")
        }
        
        cell.button3Event = {(button: UIButton) -> () in
            print("touch button3")
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}

