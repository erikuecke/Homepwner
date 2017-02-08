//
//  CustomTextField.swift
//  Homepwner
//
//  Created by Erik Uecke on 2/8/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {
    
    override func becomeFirstResponder() -> Bool {
        super.becomeFirstResponder()
        layer.borderColor = UIColor.green.cgColor
        layer.borderWidth = 1.0
        layer.cornerRadius = 5.0
        return true
    }
    
    override func resignFirstResponder() -> Bool {
        super.resignFirstResponder()
        layer.borderWidth = 0.0
        return true
    }
}
