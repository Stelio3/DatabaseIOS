//
//  TaskCell.swift
//  ToDo
//
//  Created by PABLO HERNANDEZ JIMENEZ on 19/12/18.
//  Copyright © 2018 PABLO HERNANDEZ JIMENEZ. All rights reserved.
//

import UIKit

class TaskCell: UITableViewCell {

    @IBOutlet weak var lblcell:UILabel!
    @IBOutlet weak var imgcell:UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
