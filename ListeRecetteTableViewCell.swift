//
//  ListeRecetteTableViewCell.swift
//  ProjetMiseNiveauIOS
//
//  Created by Gougerot Elisa on 08/09/2019.
//  Copyright © 2019 Elisa Gougerot. All rights reserved.
//

import UIKit

class ListeRecetteTableViewCell: UITableViewCell {

    @IBOutlet var TitleRecette: UILabel!
    @IBOutlet var ImageRecette: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
