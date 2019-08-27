//
//  TableViewCell.swift
//  TableViewCellButtonEventExample
//
//  Created by 박성원 on 27/08/2019.
//  Copyright © 2019 sungwon. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    var button1Event: ((_ button: UIButton) -> Void)?
    var button2Event: ((_ button: UIButton) -> Void)?
    var button3Event: ((_ button: UIButton) -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func button1Event(_ sender: UIButton) {
        self.button1Event!(sender)
    }
    
    @IBAction func button2Event(_ sender: UIButton) {
        self.button2Event!(sender)
    }
    
    @IBAction func button3Event(_ sender: UIButton) {
        self.button3Event!(sender)
    }
}
