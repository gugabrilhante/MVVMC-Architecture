//
//  TableViewCell.swift
//  MVVMC-Architecture
//
//  Created by Natan on 10/11/18.
//  Copyright © 2018 Gustavo. All rights reserved.
//

import UIKit

protocol TableViewCellType {
    func setupCell(listModel: ListModel)
}

class TableViewCell: UITableViewCell, TableViewCellType {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dataLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setupCell(listModel: ListModel){
        nameLabel.text = listModel.text
        dataLabel.text = listModel.text
    }
    
}
