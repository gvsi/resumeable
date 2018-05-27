//
//  EditProfileItemTableViewCell.swift
//  resumeable
//
//  Created by Giovanni Alcantara on 25/05/2018.
//  Copyright © 2018 resumeable. All rights reserved.
//

import UIKit

class EditProfileItemTableViewCell: UITableViewCell, UITextFieldDelegate {

    @IBOutlet weak var rowLabel: UILabel!
    @IBOutlet weak var rowTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        rowTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
