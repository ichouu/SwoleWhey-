//
//  NumberCell.swift
//  SwoleWhey
//
//  Created by Eric Chou on 1/27/16.
//  Copyright © 2016 Eric Chou. All rights reserved.
//

import UIKit

class NumberCell: UITableViewCell {
    
    @IBOutlet var numberTextField:UITextField!
    
    var doubleValue:Double {
        
        get {
            let numberString:NSString = NSString(string:numberTextField.text!)
            return numberString.doubleValue;
        }
    }
}


