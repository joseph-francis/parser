//
//  TableViewCell.swift
//  parser
//
//  Created by Joseph on 5/15/17.
//  Copyright © 2017 Joseph. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var customLbl: UILabel!
    
    
    func configure(string: String) {
        
        customLbl.text = string
        
    }

}
