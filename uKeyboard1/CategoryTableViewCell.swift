//
//  CategoryTableViewCell.swift
//  uKeyboard1
//
//  Created by Isaac Zhu on 12/9/16.
//  Copyright © 2016 uKeyboard. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    @IBOutlet weak var characterType: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
