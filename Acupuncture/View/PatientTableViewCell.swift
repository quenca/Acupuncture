//
//  PatientTableViewCell.swift
//  Acupuncture
//
//  Created by Gustavo Quenca on 08/04/19.
//  Copyright © 2019 Quenca. All rights reserved.
//


import UIKit

class PatientTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
