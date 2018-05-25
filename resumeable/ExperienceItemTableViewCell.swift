//
//  ExperienceItemTableViewCell.swift
//  resumeable
//
//  Created by Wei Tat Lee on 25/05/2018.
//  Copyright © 2018 resumeable. All rights reserved.
//

import UIKit

class ExperienceItemTableViewCell: UITableViewCell {
    @IBOutlet weak var experienceCellView: UIView!
    @IBOutlet weak var jobTitleLabel: UILabel!
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var startEndDateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
