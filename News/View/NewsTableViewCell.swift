//
//  NewsTableViewCell.swift
//  News
//
//  Created by Aydın Kutlu on 14.08.2024.
//

import UIKit

class NewsTableViewCell: UITableViewCell{

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var storyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
