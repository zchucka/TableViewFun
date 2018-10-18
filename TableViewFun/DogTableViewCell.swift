//
//  DogTableViewCell.swift
//  TableViewFun
//
//  Created by Chucka, Zachary Tyler on 10/18/18.
//  Copyright © 2018 Chucka, Zachary Tyler. All rights reserved.
//

import UIKit

class DogTableViewCell: UITableViewCell {
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var breedLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with dog: dog)
    {
        // initialize
        nameLabel.text = dog.name
        breedLabel.text = dog.breed
    }

}
