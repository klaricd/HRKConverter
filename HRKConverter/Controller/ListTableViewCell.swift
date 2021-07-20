//
//  ListTableViewCell.swift
//  HRKConverter
//
//  Created by David Klaric on 14.05.2021..
//

import UIKit

class ListTableViewCell: UITableViewCell {

    
    @IBOutlet weak var currencyType: UILabel!
    @IBOutlet weak var currencyBuy: UILabel!
    @IBOutlet weak var currencySell: UILabel!
    @IBOutlet weak var currencyMiddle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
