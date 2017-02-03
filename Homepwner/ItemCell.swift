//
//  ItemCell.swift
//  Homepwner
//
//  Created by Erik Uecke on 2/3/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

//import Foundation

import UIKit

class ItemCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var serialNumberLabel: UILabel!
    @IBOutlet var valueLabel: UILabel!
    
    // Updating text color
    func updateValuelabelTextColor() {
        if let text = valueLabel.text {
            let startIndex = text.index(text.startIndex, offsetBy: 1)
            if let textNum = Int(text.substring(from: startIndex)) {
                
                if textNum < 50 {
                    valueLabel.textColor = UIColor.green
                } else {
                    valueLabel.textColor = UIColor.red
                }
            }
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        updateValuelabelTextColor()
    }
    
    
    // Text size responding to user changes
    override func awakeFromNib() {
        super.awakeFromNib()
        
        nameLabel.adjustsFontForContentSizeCategory = true
        serialNumberLabel.adjustsFontForContentSizeCategory = true
        valueLabel.adjustsFontForContentSizeCategory = true
        
    }
}
