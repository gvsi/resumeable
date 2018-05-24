//
//  EducationItemTableViewCell.swift
//  resumeable
//
//  Created by Giovanni Alcantara on 24/05/2018.
//  Copyright © 2018 resumeable. All rights reserved.
//

import UIKit

class EducationItemTableViewCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var schoolNameLabel: UILabel!
    @IBOutlet weak var degreeLabel: UILabel!
    @IBOutlet weak var datesLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
