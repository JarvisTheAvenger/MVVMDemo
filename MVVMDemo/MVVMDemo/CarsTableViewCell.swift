//
//  CarsTableViewCell.swift
//  MVVMDemo
//
//  Created by Rahul Umap on 05/09/17.
//  Copyright © 2017 Rahul Umap. All rights reserved.
//

import UIKit

class CarsTableViewCell: UITableViewCell {
    @IBOutlet weak var model: UILabel!
    @IBOutlet weak var make: UILabel!
    @IBOutlet weak var power: UILabel!

    @IBOutlet weak var carsImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
