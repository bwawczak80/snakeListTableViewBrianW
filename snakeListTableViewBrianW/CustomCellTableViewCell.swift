//
//  CustomCellTableViewCell.swift
//  snakeListTableViewBrianW
//
//  Created by Brian Wawczak on 3/13/19.
//  Copyright © 2019 Brian Wawczak. All rights reserved.
//

import UIKit

class CustomCellTableViewCell: UITableViewCell {
    
    var name: String = "" {
        didSet {
            if (name != oldValue) {
                nameLabel.text = name
            }
        }
    }
     
    var genes: String = "" {
        didSet {
            if (genes != oldValue) {
                genesLabel.text = genes
            }
        }
    }
    var nameLabel: UILabel!
    var genesLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let nameLabelDisplay = CGRect(x: 0, y: 5, width: 70, height: 20)
        let nameMarker = UILabel(frame: nameLabelDisplay)
        nameMarker.textAlignment = NSTextAlignment.right
        nameMarker.text = "Name: "
        nameMarker.font = UIFont.boldSystemFont(ofSize: 12)
        contentView.addSubview(nameMarker)
        
        let genesLabelDisplay = CGRect(x: 0, y: 25, width: 70, height: 20)
        let genesMarker = UILabel(frame: genesLabelDisplay)
        genesMarker.textAlignment = NSTextAlignment.right
        genesMarker.text = "Genes: "
        genesMarker.font = UIFont.boldSystemFont(ofSize: 12)
        contentView.addSubview(genesMarker)
        
        let nameValueDisplay = CGRect(x: 80, y: 5, width: 200, height: 20)
        nameLabel = UILabel(frame: nameValueDisplay)
        contentView.addSubview(nameLabel)
        
        let genesValueDisplay = CGRect(x: 80, y: 25, width: 200, height: 20)
        genesLabel = UILabel(frame: genesValueDisplay)
        contentView.addSubview(genesLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
