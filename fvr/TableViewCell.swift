//
//  TableViewCell.swift
//  fvr
//
//  Created by Adrian Ortuzar on 23/12/2016.
//  Copyright © 2016 Adrian Ortuzar. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var positionColor: UIView!
    
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var raceMultiplier: UILabel!
    
    @IBOutlet weak var race: UILabel!
    @IBOutlet weak var area: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
